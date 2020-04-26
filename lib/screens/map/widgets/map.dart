import 'dart:math';

import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/global/marker_generator.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/providers/map_photographer.dart';
import 'package:provider/provider.dart';

class MapWidget extends StatefulWidget {
  final LatLng center;
  final double centerZoom;
  final LatLng selfPosition;
  final void Function(MapboxMapController) onMapCreate;
  final void Function(CameraPosition) onCameraMove;
  final void Function() onMapTap;
  final void Function(LatLng coordinates) animateToPlace;
  final void Function(bool status) setMapLoading;

  final String styleAsset;
  MapWidget({
    Key key,
    @required this.center,
    this.selfPosition,
    this.styleAsset = 'assets/map/style.txt',
    this.onCameraMove,
    this.onMapCreate,
    this.onMapTap,
    this.centerZoom,
    this.animateToPlace,
    this.setMapLoading,
  }) : super(key: key);

  @override
  MapWidgetState createState() => MapWidgetState();
}

class MapWidgetState extends State<MapWidget> {
  LatLng get center => widget.center;
  double get centerZoom => widget.centerZoom;
  LatLng get selfPosition => widget.selfPosition;
  String get styleAsset => widget.styleAsset;
  Function get onMapCreate => widget.onMapCreate;
  Function get onCameraMove => widget.onCameraMove;
  Function get onMapTap => widget.onMapTap;
  Function get animateToPlace => widget.animateToPlace;
  Function get setMapLoading => widget.setMapLoading;

  // Set<Marker> markers = Set();

  BitmapDescriptor selfBitmap;
  Map<String, BitmapDescriptor> placeBitmaps = {};
  Map<String, BitmapDescriptor> choosedPlaceBitmaps = {};
  Symbol choosedSymbol;

  CameraPosition _initialCameraPosition;

  MapboxMapController mapController;

  @override
  void initState() {
    _initialCameraPosition = CameraPosition(
      target: center,
      zoom: centerZoom != null ? centerZoom : 11.1,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MapPhotographerProvider>(context);
    return MapboxMap(
      onMapClick: (point, lat) {
        if (onMapTap != null) onMapTap();
      },
      logoViewMargins: Point<num>(10, 360),
      styleString: "mapbox://styles/filatovdv/ck9elbxn62llr1itgwvm7it4x",
      trackCameraPosition: true,
      initialCameraPosition: _initialCameraPosition,
      onMapCreated: (MapboxMapController _controller) async {
        mapController = _controller;
        mapController.addListener(() => onCameraMove != null ? onCameraMove(mapController.cameraPosition) : () => {});
        mapController.setMapLanguage("name_ru");
        if (onMapCreate != null) onMapCreate(mapController);
      },
      onStyleLoadedCallback: () async {
        // for (Photographer photographer in provider.photographers) {
        for (int i = 0; i < 10; i++) {
          var _symbol = await mapController.addSymbol(
            SymbolOptions(
              // iconImage: provider.photographerToPreview == PhotographLocation
              iconImage: i == 0 ? "assets/images/map/user${i + 1}_chosen.png" : "assets/images/map/user${i + 1}.png",
              iconSize: .75,
              textField: "200 М",
              textSize: 14,
              textColor: i == 0 ? "#000000" : "#FFFFFF",
              textOffset: Offset(0, 1.7),
              // geometry: photographer.liveLocation,
              geometry: LatLng(59.901835 + i / 100, 30.298906 + i / 100),
              onTap: (Symbol symbol) {
                // provider.setSymbolAndPreview(symbol, photographer);
                // animateToPlace(photographer.liveLocation);
              },
            ),
          );
          // if (provider.photographerToPreview == photographer)
          //   WidgetsBinding.instance.addPostFrameCallback(
          //     (timeStamp) => provider.setSymbolAndPreview(_symbol, photographer),
          //   );
        }
        setMapLoading(false);
      },
      compassEnabled: false,
      myLocationEnabled: false,
      rotateGesturesEnabled: false,
      tiltGesturesEnabled: false,
    );
  }
}
