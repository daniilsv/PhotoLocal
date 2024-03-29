import 'package:photolocal/providers/location.dart';
import 'package:photolocal/screens/map/provider.dart';
import 'package:photolocal/screens/map/widgets/categories_line.dart';
import 'package:photolocal/screens/map/widgets/location.dart';
import 'package:photolocal/screens/map/widgets/map.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

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

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
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
            ),
          ),
          Positioned(
            bottom: 80 + MediaQuery.of(context).viewPadding.bottom,
            right: 20,
            child: Container(
              margin: EdgeInsets.only(left: 8, bottom: 8),
              child: LocationWidget(onTap: provider.animateToLocation),
            ),
          ),
          Positioned(
            bottom: 16 + MediaQuery.of(context).viewPadding.bottom,
            child: CategoriesLine(),
          ),
          Positioned(
            top: 80 + MediaQuery.of(context).viewPadding.bottom,
            left: 31,
            child: IgnorePointer(
              ignoring: true,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Эти фотографы\nготовы снимать\nпрямо сейчас",
                      style: PLStyle.druk,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Напишите им, например, когда вы в путешествии и\nхотите отличных кадров с лучших локаций",
                      style: PLStyle.text,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
