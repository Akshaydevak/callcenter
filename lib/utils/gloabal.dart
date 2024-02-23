

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/utils/bloc_observer.dart';
import 'dart:html' as html;

class Global{
  static Future init() async{
    Bloc.observer=MyGlobalObserver();
    if (html.window.location.hostname == 'localhost') {
      html.window.onLoad.listen((_) {
        if (html.window.navigator.serviceWorker?.controller != null) {
          html.window.navigator.serviceWorker?.controller!
              .postMessage({'command': 'clearCache'});
        }
      });
    }

  }



}