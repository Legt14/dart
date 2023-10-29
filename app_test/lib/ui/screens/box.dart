import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({required this.index, Key? key}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
          // direction: Axis.vertical,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          // align center in desktop
          // crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  color: Colors.primaries[index % Colors.primaries.length],
                  borderRadius: const BorderRadius.all(Radius.circular(19))),
            ),
            const Text(
              'test',
              style: TextStyle(color: Colors.white60, fontSize: 22.2),
            )
          ]),
    );
  }
}
