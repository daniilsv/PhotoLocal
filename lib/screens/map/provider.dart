import 'dart:async';

import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:photolocal/providers/location.dart';
import 'package:photolocal/components/stopper.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart' as ln;
import 'package:flutter/foundation.dart' as found;

import 'widgets/sheet/bottom_sheet.dart';

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
    locationSubscr = ln.Location().onLocationChanged.listen((ln.LocationData currentLocation) {
      LocationProvider().setPosition(LatLng(currentLocation.latitude, currentLocation.longitude));
    });
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

  openCloseStopper() {
    if (stopperKey.currentState.stop > 0) {
      stopperKey.currentState.stop = 0;
    } else {
      stopperKey.currentState.stop = 1;
    }
  }

  showBottomStopper(BuildContext context) {
    if (stopperController != null) return;
    stopperController = showStopper(
      key: stopperKey,
      context: context,
      builder: (context, scrollController, scrollPhysics, stop) {
        return BottomSheetView(scrollController, scrollPhysics, stop);
      },
      stops: [130, 500, MediaQuery.of(context).size.height],
      userCanClose: true,
      onChangeStop: (currentStop, targetStop) {},
    );
    stopperController.closed.then((_) {
      // PlaceProvider().disactivateSymbol(PlaceProvider().choosedSymbol);
      stopperController = null;
    });
  }

  hideStopper() {
    if (stopperController != null) stopperController.close();
  }
}
