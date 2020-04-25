import 'package:photolocal/providers/location.dart';
import 'package:photolocal/screens/map/provider.dart';
import 'package:photolocal/screens/map/widgets/location.dart';
import 'package:photolocal/screens/map/widgets/map.dart';
import 'package:flutter/material.dart';

class MapView extends StatefulWidget {
  const MapView({Key key, @required this.provider}) : super(key: key);
  final MapProvider provider;

  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  MapProvider get provider => widget.provider;
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      provider.showBottomStopper(context);
    });
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: MapWidget(
              center: LocationProvider().position,
              selfPosition: LocationProvider().position,
              onMapCreate: provider.onMapCreate,
              onCameraMove: provider.onCameraMove,
              animateToPlace: provider.animateToPlace,
              setMapLoading: provider.setMapLoading,
              showBottomStopper: provider.showBottomStopper,
            ),
          ),
          Positioned(
            bottom: 160 + MediaQuery.of(context).viewPadding.bottom,
            right: 12,
            child: Container(
              margin: EdgeInsets.only(left: 8, bottom: 8),
              child: LocationWidget(onTap: provider.animateToLocation),
            ),
          ),
        ],
      ),
    );
  }
}
