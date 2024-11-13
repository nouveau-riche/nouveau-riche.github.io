import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {
  UrlLauncherUtils._();

  static String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  static void openMail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'nikunjsha02@gmail.com',
      query: _encodeQueryParameters(<String, String>{
        'subject': 'Mobile Developer',
      }),
    );

    launchUrl(emailLaunchUri);
  }

  static void launchCall() {}

  static void openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}
