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
  // if (kIsWeb) {
  //   final anchor = html.AnchorElement(href: fileUrl)
  //     ..setAttribute(
  //         'download', fileName) // Suggests download instead of opening
  //     ..target = 'blank' // Opens the link in a new tab if needed
  //     ..style.display = 'none'; // Keeps anchor hidden
  //
  //   html.document.body?.append(anchor);
  //   anchor.click(); // Trigger download
  //   anchor.remove(); // Remove from the DOM after click
  // }
}
