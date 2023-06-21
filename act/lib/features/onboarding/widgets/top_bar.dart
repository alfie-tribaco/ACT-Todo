import 'package:act/app/utils/app_theme_state.dart';
import 'package:act/app/utils/constants/app_measures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

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
        Row(
          children: [
            SvgPicture.asset(
              'assets/act_logo.svg',
              height: 30,
            ),
            SvgPicture.asset(
              'assets/act_text_logo.svg',
              height: 30,
            ),
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
            ? PopupMenuButton(
                icon: const Icon(Icons.menu),
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem<String>(
                      value: "features",
                      child: Text("Features"),
                    ),
                    PopupMenuItem<String>(
                      value: "about",
                      child: Text("about"),
                    ),
                    PopupMenuItem<String>(
                      value: "donate",
                      child: Text("donate"),
                    )
                  ];
                })
            : Consumer<AppThemeState>(
                builder: (context, value, child) {
                  return Switch(
                      value: value.isDark,
                      onChanged: (value) {
                        context.read<AppThemeState>().changeTheme();
                      });
                },
              )
      ]),
    );
  }
}
