import 'dart:async';

import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:photolocal/providers/location.dart';
import 'package:photolocal/components/stopper.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart' as ln;
import 'package:flutter/foundation.dart' as found;

class MapProvider with found.ChangeNotifier {
  static final MapProvider _singleton = MapProvider._internal();
  MapProvider._internal();
  factory MapProvider() => _singleton;

  // controllers
  MapboxMapController controller;

  //focus
  FocusNode reviewFocusNode = FocusNode();

  //other
  StreamSubscription locationSubscr;
  CameraPosition lastPosition;
  PersistentBottomSheetController stopperController;
  bool mapLoading = true;

  Set<Circle> myCircles = Set<Circle>();

  @override
  void dispose() {
    locationSubscr.cancel();
    super.dispose();
  }

  setMapLoading(bool status) {
    mapLoading = status;
    notifyListeners();
  }

  subscribeOnLocation(StreamSubscription locationSubscr) {
    locationSubscr = ln.Location().onLocationChanged.listen(
      (ln.LocationData currentLocation) async {
        LocationProvider().setPosition(LatLng(currentLocation.latitude, currentLocation.longitude));
        for (Circle circle in myCircles) controller.removeCircle(circle);
        myCircles = Set<Circle>();
        if (controller != null) {
          myCircles.add(
            await controller.addCircle(
              CircleOptions(
                circleRadius: 17,
                circleColor: "#FF2854",
                circleOpacity: 0.15,
                geometry: LatLng(currentLocation.latitude, currentLocation.longitude),
              ),
            ),
          );
          myCircles.add(
            await controller.addCircle(
              CircleOptions(
                circleRadius: 7,
                circleColor: "#FF2854",
                geometry: LatLng(currentLocation.latitude, currentLocation.longitude),
              ),
            ),
          );
        }
      },
    );
  }

  void onMapCreate(MapboxMapController _controller) {
    controller = _controller;
  }

  animateToPlace(LatLng coordinates) {
    if (lastPosition?.zoom == null) return;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: coordinates, zoom: lastPosition?.zoom),
      ),
    );
  }

  onCameraMove(CameraPosition position) async {
    lastPosition = position;
  }

  animateToLocation() {
    if (LocationProvider()?.position == null)
      LocationProvider().update();
    else {
      controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LocationProvider()?.position, zoom: lastPosition?.zoom),
        ),
      );
    }
  }

  GlobalKey<StopperState> stopperKey = GlobalKey();
}
