import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/providers/tinder.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:provider/provider.dart';

import 'tinder_card.dart';

class TinderWidget extends StatelessWidget {
  const TinderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<TinderProvider>(context);
//TODO: fix it
    return Container(
      height: MediaQuery.of(context).size.height * (provider.status == TinderStatus.answering ? 0.75 : 0),
      child: TinderSwapCard(
        orientation: AmassOrientation.BOTTOM,
        totalNum: provider.tinderImages.length,
        stackNum: 2,
        swipeEdge: 4.0,
        maxHeight: MediaQuery.of(context).size.height * .7,
        maxWidth: MediaQuery.of(context).size.width * .9,
        minHeight: MediaQuery.of(context).size.height * .65,
        minWidth: MediaQuery.of(context).size.width * .7,
        cardBuilder: (context, index) => Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: PLColors.bg,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Opacity(
                    opacity: (index == provider.order) ? provider.swipePercent.clamp(0.0, 1.0) : 0,
                    child: Container(
                      margin: EdgeInsets.only(left: 12, top: 12),
                      child: Text(
                        "ДА",
                        style: PLStyle.text,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: (index == provider.order) ? provider.swipePercent.clamp(-1.0, 0.0).abs() : 0,
                    child: Container(
                      margin: EdgeInsets.only(right: 12, top: 12),
                      child: Text(
                        "НЕТ",
                        style: PLStyle.text,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: PLImage(
                  provider.tinderImages[index].image,
                ),
              ),
            ),
          ],
        ),
        swipeCompleteCallback: (
          CardSwipeOrientation orientation,
          int index,
        ) {
          if (orientation != CardSwipeOrientation.RECOVER)
            provider.answerTinder(
              index,
              orientation == CardSwipeOrientation.RIGHT,
            );
        },
        swipeUpdateCallback: (
          DragUpdateDetails details,
          Alignment align,
          bool isEnd,
        ) =>
            provider.updatePercent(isEnd ? 0 : align.x),
      ),
    );
  }
}
