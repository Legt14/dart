import 'package:app_test/ui/player/player.dart';
import 'package:app_test/ui/screens/bottom_bar.dart';
import 'package:app_test/ui/screens/box.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
          color: Colors.black87,
          alignment: Alignment.center,
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                  child: VideoPlayerW()
                  ),
              const SliverPadding(padding: EdgeInsets.all(10)),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 30.0,
                  crossAxisSpacing: 15.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Box(index: index);
                  },
                  childCount: 28,
                  semanticIndexOffset: 2,
                ),
              ),
              const SliverPadding(padding: EdgeInsets.all(10)),
            ],
          ),
        ),
        bottomNavigationBar: const BottomBar());
  }
}
