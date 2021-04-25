import 'package:url_launcher/url_launcher.dart';

class ConnectAction {
  static bool connectWithParams(
      {required String name, required String mail, required String message}) {
    try {
      String url = "mailto:amrmonzir@gmail.com?";
      String params = "subject=" +
          Uri.encodeComponent(
              mail.substring(0, mail.indexOf("@")) + " wants to have a chat") +
          "&body=" +
          Uri.encodeComponent(message);
      launch(url + params);
    } catch (e) {
      return false;
    }
    return true;
  }
}
