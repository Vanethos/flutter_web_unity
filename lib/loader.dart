import 'package:flutter/material.dart';
import 'dart:html';
import 'dart:ui' as ui;

class HtmlLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This will register the new UI element in the app, given a View ID
    //ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory("47", (int viewId) {
      final parent = DivElement();
      final elem = DivElement();
      elem.classes.add("loader");
      elem.id = "super-id";
      final css = LinkElement();
      css.rel = "stylesheet";
      css.href = "styles.css";


      parent.append(css);
      parent.append(elem);

      return parent;
    });

    // After the UI element is created with a specififed ID, we will
    // search for that element and render it inside a HTML Element View so that
    // it can be displayed in a web page
    return HtmlElementView(viewType: "47");
  }
}
