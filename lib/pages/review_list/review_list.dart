import 'package:flutter/material.dart';
import 'package:keiko_food/helper/clippers.dart';

class ReviewList extends StatefulWidget {
  const ReviewList({super.key});

  @override
  State<ReviewList> createState() => _ReviewListState();
}

class _ReviewListState extends State<ReviewList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Keiko Reviews"),
        backgroundColor: Colors.transparent,
        elevation: 2.0,
        flexibleSpace: ClipPath(
          clipper: OvalClipperUpper(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondaryContainer,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true, // To keep clipped are Transparent
    );
  }
}
