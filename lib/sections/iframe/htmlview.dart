import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

class Iframe extends StatelessWidget {
  Iframe() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframe', (int viewId) {
      var iframe = html.IFrameElement();
      iframe.src =
          'https://experience.arcgis.com/experience/cf8982ff646f44d1b362563ab7257e78';
      return iframe;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400, height: 600, child: HtmlElementView(viewType: 'iframe'));
  }
}
