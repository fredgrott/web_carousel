// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web_carousel/src/domain/models/all_assets.dart';
import 'package:web_carousel/src/my_app.dart';




Future<void> main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();

  binding.addPostFrameCallback((_) async {
    final BuildContext context = binding.renderViewElement as BuildContext;
    if(context != null)
      {
        for(final asset in allAssets)
        {
          precacheImage(AssetImage(asset), context,);
        }
      }
  });

  // the non cross-platform way to set this for the web platform using the
  // flutter web plugins library, see:
  // https://docs.flutter.dev/development/ui/navigation/url-strategies
  // the result is that we have the path url instead of the hash url
  setUrlStrategy(PathUrlStrategy());


  
  runApp(MyApp());
}
