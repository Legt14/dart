import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 60,
        color: Colors.black87,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.spaceAround, // set your alignment
            children: <Widget>[
              IconButton(
                tooltip: 'Home',
                icon: const Icon(Icons.home_rounded),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Account',
                icon: const Icon(Icons.account_circle_rounded),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
