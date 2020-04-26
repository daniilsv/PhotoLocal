import 'package:location/location.dart';
import 'package:photolocal/components/loading.dart';
import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/providers/location.dart';
import 'package:photolocal/screens/map/provider.dart';
import 'package:photolocal/screens/map/widgets/premission.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import 'view/index.dart';

/// Map Screen
/// {@category Screens}
class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> with AutomaticKeepAliveClientMixin {
  //other
  StreamSubscription locationSubscr;
  MapProvider provider;

  @override
  void initState() {
    LocationProvider locationProvider = LocationProvider();
    locationProvider.update();
    provider = MapProvider();
    provider.subscribeOnLocation(locationSubscr);
    super.initState();
  }

  @override
  void dispose() {
    locationSubscr?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var provider = Provider.of<LocationProvider>(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(1),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            if (provider.position != null)
              Opacity(
                opacity: this.provider.mapLoading ? 0.0 : 1.0,
                child: MapView(provider: this.provider),
              ),
            if (provider.permission == PermissionStatus.denied) PermissionScreen(),
            if (provider.position == null || this.provider.mapLoading)
              Positioned.fill(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: PLLoading(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
