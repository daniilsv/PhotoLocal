import 'package:flutter/foundation.dart';
import 'package:location/location.dart' as ln;
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class LocationProvider with ChangeNotifier {
  static final LocationProvider _singleton = LocationProvider._internal();
  LocationProvider._internal();
  factory LocationProvider() => _singleton;

  LatLng position;
  PermissionStatus permission;

  update() async {
    PermissionStatus permission = await ln.Location().hasPermission();
    if (permission == PermissionStatus.denied) permission = await ln.Location().requestPermission();
    if (permission == PermissionStatus.granted) {
      this.position = null;
      this.permission = permission;
      ln.LocationData location;
      try {
        location = await ln.Location().getLocation();
      } catch (e) {
        print("Не удалось получить разрешения. Shit happends");
      }
      this.position = LatLng(location?.latitude, location?.longitude);
      this.permission = permission;
    } else {
      this.position = null;
      this.permission = permission;
    }
    notifyListeners();
  }

  setPosition(LatLng position) {
    this.position = position;
    notifyListeners();
  }
}
