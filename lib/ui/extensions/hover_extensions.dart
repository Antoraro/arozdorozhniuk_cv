// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:arozd_cv/ui/widgets/translate_on_hover.dart';
import 'package:arozd_cv/ui/widgets/underline_on_hover.dart';
import 'package:flutter/cupertino.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      onHover: (event) {
        appContainer.style.cursor = 'pointer';
      },
      // When it exits set it back to default
      onExit: (event) {
        appContainer.style.cursor = 'default';
      },
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }

  Widget get underlineOnHover {
    return UnderlineOnHover(
      child: this,
    );
  }
}
