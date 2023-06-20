import 'package:act/app/utils/constants/app_measures.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget implements PreferredSizeWidget {
  const TopBar({super.key, required this.burgerMenuEnabled});

  final bool burgerMenuEnabled;

  @override
  State<TopBar> createState() => _TopBarState();

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.preferredSize.height,
      margin: EdgeInsets.symmetric(
          horizontal: AppMeasures().getScreenWidth(context) * 0.2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Row(
          children: [
            Text("C Logo"),
            Text("ACT"),
          ],
        ),
        Visibility(
          visible: widget.burgerMenuEnabled == false,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
                padding: EdgeInsets.all(AppMeasures().defaultPadding),
                child: const Text("Features")),
            Container(
                padding: EdgeInsets.all(AppMeasures().defaultPadding),
                child: const Text("About")),
            Container(
                padding: EdgeInsets.all(AppMeasures().defaultPadding),
                child: const Text("Donate")),
          ]),
        ),
        widget.burgerMenuEnabled
            ? const Icon(Icons.menu_book)
            : const Text("Button")
      ]),
    );
  }
}
