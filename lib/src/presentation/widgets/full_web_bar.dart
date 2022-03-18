// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';

const kDesktopBreakpoint = 1024.0;
late bool fullScreen;

class FullWebBar extends StatelessWidget with PreferredSizeWidget {
  final Color hamburgerColor;
  final String pathToLogo;
  final Color webBarColor;
  final List<ElevatedButton> webNavButtons;

  final Text websiteTitle;
  const FullWebBar({
    Key? key,
    required this.hamburgerColor,
    required this.pathToLogo,
    required this.webBarColor,
    required this.webNavButtons,
    required this.websiteTitle,
  }) : super(key: key);

  WidgetBuilder get _localVerticalDrawerBuilder {
    return (BuildContext context) {
      return GestureDetector(
        // ignore: prefer-extracting-callbacks
        onTap: () {
          Navigator.of(context).pop();
        },
        // need to expand as much as needed
        child: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Material(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.clear_all_rounded,
                    size: 32,
                    color: hamburgerColor,
                  ),
                ),
              ),
              webNavButtons.first,
              webNavButtons[1],
              webNavButtons[2],
              webNavButtons[3],
              webNavButtons[4],
            ],
          ),
        ),
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    fullScreen =
        MediaQuery.of(context).size.width >= kDesktopBreakpoint ? true : false;

    return fullScreen
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            color: webBarColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(pathToLogo),
                websiteTitle,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: webNavButtons,
                ),
              ],
            ),
          )
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            color: webBarColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: hamburgerColor,
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Builder(
                      builder: (context) {
                        return Material(
                          child: IconButton(
                            splashColor: hamburgerColor,
                            onPressed: () {
                              showAlignedDialog<dynamic>(
                                context: context,
                                builder: _localVerticalDrawerBuilder,
                                followerAnchor: Alignment.topLeft,
                                targetAnchor: Alignment.bottomLeft,
                                barrierColor: Colors.transparent,
                              );
                            },
                            icon: Icon(
                              Icons.menu,
                              size: 32,
                              color: hamburgerColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Image.asset(pathToLogo),
                websiteTitle,
              ],
            ),
          );
  }

  @override
  Size get preferredSize => const Size(
        double.infinity,
        80,
      );
}
