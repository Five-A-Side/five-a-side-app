import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key, required this.children});

  final List<Widget> children;

  Widget _buildCarousel(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          // TODO use an aspect ratio here for tablet support
          height: 240.0,
          child: PageView(
            // TODO @joaorbfc - store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.8),
            physics: const BouncingScrollPhysics(),
            children: children,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildCarousel(context);
  }
}
