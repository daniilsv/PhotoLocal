import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:photolocal/providers/map_photographer.dart';
import 'package:photolocal/screens/map/provider.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:provider/provider.dart';

import 'Photograph/extended_Photograph_info.dart';
import 'Photograph/Photograph_info.dart';

class BottomSheetView extends StatefulWidget {
  final ScrollController scrollController;
  final ScrollPhysics scrollPhysics;
  final int stop;
  BottomSheetView(this.scrollController, this.scrollPhysics, this.stop);
  @override
  BottomSheetViewState createState() => BottomSheetViewState();
}

class BottomSheetViewState extends State<BottomSheetView> with TickerProviderStateMixin {
  int targetStop = 0;
  void onChangeStop(int currentStop, int targetStop) {
    if (this.targetStop == targetStop) return;
    this.targetStop = targetStop;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MapPhotographerProvider>(context);
    return Container(
      color: PLColors.primary,
      child: ListView(
        controller: widget.scrollController,
        physics: widget.scrollPhysics,
        children: [
          if (widget.stop == 0)
            Center(
              child: Icon(
                EvaIcons.arrowIosUpward,
                size: 30,
                color: PLColors.bg.withOpacity(.2),
              ),
            )
          else if (widget.stop == 1)
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 16, bottom: 10),
                width: 24,
                height: 3,
                decoration: BoxDecoration(
                  color: PLColors.bg.withOpacity(.2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )
          else
            Center(
              child: Icon(
                EvaIcons.arrowIosDownward,
                size: 30,
                color: PLColors.bg.withOpacity(.2),
              ),
            ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              MapProvider().openCloseStopper();
            },
            child: provider?.placeToPreview?.liveLocation == null
                ? PhotographInfo(place: provider.placeToPreview)
                : PhotographInfo(place: provider.placeToPreview),
          ),
          ExtendedPhotographInfo(
            photographer: provider.placeToPreview,
            height: MediaQuery.of(context).size.height,
          )
        ],
      ),
    );
  }
}
