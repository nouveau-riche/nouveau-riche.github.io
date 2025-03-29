import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;
import 'dart:js_interop';

void downloadFileFromUrl({required String fileUrl, required String fileName}) {
  final anchor = web.document.createElement('a') as web.HTMLAnchorElement;
  anchor.href = fileUrl.toJS as String;
  anchor.download = fileName.toJS as String;
  anchor.style.display = 'none'.toJS as String;

  web.document.body?.appendChild(anchor);
  anchor.click();
  anchor.remove();
}

void scrollToIndex(ScrollController controller, int index, double height) {
  controller.animateTo(
    index * height,
    duration: const Duration(milliseconds: 400),
    curve: Curves.easeInOut,
  );
}
