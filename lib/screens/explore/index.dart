import 'package:flutter/material.dart';
import 'package:photolocal/screens/explore/providers/slider.dart';
import 'package:photolocal/screens/explore/view/slider.dart';
import 'package:provider/provider.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SliderProvider(),
      child: Stack(
        children: [
          Positioned.fill(
            child: SliderView(),
          ),
        ],
      ),
    );
  }
}
