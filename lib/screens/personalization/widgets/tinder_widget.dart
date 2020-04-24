import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/screens/personalization/providers/tinder.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'tinder_card.dart';

class TinderWidget extends StatelessWidget {
  const TinderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TinderProvider>.reactive(
      viewModelBuilder: () => TinderProvider(),
      builder: (context, provider, child) => Container(
        height: MediaQuery.of(context).size.height * (provider.status == TinderStatus.answering ? 0.75 : 0),
        child: TinderSwapCard(
          orientation: AmassOrientation.BOTTOM,
          totalNum: provider.tinderImages.length,
          stackNum: 2,
          swipeEdge: 4.0,
          maxHeight: MediaQuery.of(context).size.height * .55,
          maxWidth: MediaQuery.of(context).size.width * .9,
          minHeight: MediaQuery.of(context).size.height * .5,
          minWidth: MediaQuery.of(context).size.width * .7,
          cardBuilder: (context, index) => Stack(
            children: <Widget>[
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: PLImage(
                    provider.tinderImages[index].image,
                  ),
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
                        margin: EdgeInsets.only(left: 25),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: PLColors.green,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.check,
                          color: PLColors.black.withOpacity(0.64),
                          size: 35,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: (index == provider.order) ? provider.swipePercent.clamp(-1.0, 0.0).abs() : 0,
                      child: Container(
                        margin: EdgeInsets.only(right: 25),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: PLColors.accent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.close,
                          color: PLColors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
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
      ),
    );
  }
}
