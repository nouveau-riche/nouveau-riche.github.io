import 'dart:html' as html;

void downloadFileFromUrl({required String fileUrl, required String fileName}) {
  final anchor = html.AnchorElement(href: fileUrl)
    ..setAttribute('download', fileName) // Suggests download instead of opening
    ..target = 'blank' // Opens the link in a new tab if needed
    ..style.display = 'none'; // Keeps anchor hidden

  html.document.body?.append(anchor);
  anchor.click(); // Trigger download
  anchor.remove(); // Remove from the DOM after click
}
