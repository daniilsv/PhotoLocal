import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter/foundation.dart' as found;
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/map/provider.dart';

enum LoadState { loading, inited }

class MapPhotographerProvider with found.ChangeNotifier {
  static final MapPhotographerProvider _singleton = MapPhotographerProvider._internal();
  MapPhotographerProvider._internal();
  factory MapPhotographerProvider() => _singleton;

  Photographer photographerToPreview;
  Set<Photographer> photographers = Set();
  Symbol choosedSymbol;

  fetchMapPhotographers() async {
    photographers = Set<Photographer>();
    if (photographers?.isNotEmpty ?? false)
      setPreviewMapPhotographer(photographers.first);
    else
      notifyListeners();
  }

  setSymbolAndPreview(Symbol symbol, Photographer photographer) async {
    if (choosedSymbol != null) await disactivateSymbol(choosedSymbol);
    choosedSymbol = symbol;
    photographerToPreview = photographer;
    await activateSymbol(symbol);
    notifyListeners();
  }

  disactivateSymbol(symbol) async {
    return MapProvider().controller.updateSymbol(
          symbol,
          SymbolOptions(
            iconSize: 0.75,
          ),
        );
  }

  activateSymbol(symbol) async {
    return MapProvider().controller.updateSymbol(
          symbol,
          SymbolOptions(
            iconSize: 0.8,
          ),
        );
  }

  void setPreviewMapPhotographer(Photographer photographer) {
    this.photographerToPreview = photographer;
    notifyListeners();
  }
}
