// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_router/url_router.dart';
import 'package:web_carousel/src/domain/models/banner_images.dart';
import 'package:web_carousel/src/domain/models/web_destinations.dart';
import 'package:web_carousel/src/presentation/widgets/full_web_bar.dart';
import 'package:web_carousel/src/presentation/widgets/web_carousel.dart';

class ServicesScreen extends StatefulWidget {
  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  bool isScrollingDown = false;
  late ScrollController _scrollViewController;
  bool _showAppbar = true;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          // ignore: no-empty-block
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          // ignore: no-empty-block
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    // ignore: no-empty-block
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<ElevatedButton> webNavButtons = [
      ElevatedButton.icon(
        onPressed: () {
          context.url = masterDestinations.first.url;
          Navigator.of(context).pop();
        },
        icon: masterDestinations.first.icon,
        label: Text(
          masterDestinations.first.titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: () {
          context.url = masterDestinations[1].url;
          Navigator.of(context).pop();
        },
        icon: masterDestinations[1].icon,
        label: Text(
          masterDestinations[1].titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: () {
          context.url = masterDestinations[2].url;
          Navigator.of(context).pop();
        },
        icon: masterDestinations[2].icon,
        label: Text(
          masterDestinations[2].titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: () {
          context.url = masterDestinations[3].url;
          Navigator.of(context).pop();
        },
        icon: masterDestinations[3].icon,
        label: Text(
          masterDestinations[3].titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: () {
          context.url = masterDestinations[4].url;
          Navigator.of(context).pop();
        },
        icon: masterDestinations[4].icon,
        label: Text(
          masterDestinations[4].titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AnimatedContainer(
              height: _showAppbar ? 56.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: FullWebBar(
                hamburgerColor: Theme.of(context).colorScheme.primary,
                pathToLogo: 'assets/images/32.png',
                webBarColor: Theme.of(context).colorScheme.background,
                webNavButtons: webNavButtons,
                websiteTitle: Text(
                  "Fred Grott",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollViewController,
                child: Column(
                  children: <Widget>[
                    WebCarousel(pathToImages: bannerImages),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
