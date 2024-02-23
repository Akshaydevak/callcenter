
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show BuildContext, Colors, IconButton, Icons, ScaffoldMessenger, SnackBar, SnackBarBehavior, Text, TextAlign, VoidCallback;
import 'package:flutter/src/widgets/container.dart';


extension ViewUtils on BuildContext {
  void showSnackBarError(
      String message, {
        Duration duration = const Duration(seconds: 3),
        VoidCallback? onVisible,
      }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(width: 300,
      padding: EdgeInsets.zero,
      content:    Container(
          width: 300,
          // height: 80,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color:Color.fromARGB(255, 179, 89, 89) ,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.error_outline,color: Colors.white,),
              const  SizedBox(width: 10,),
              Expanded(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(message, textAlign: TextAlign.center),
                    ],
                  )),
            ],
          )),
      backgroundColor: Color.fromARGB(255, 179, 89, 89) ,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      onVisible: onVisible,
    ));
  }

  void showSnackBarSuccess(String message, [VoidCallback? onVisible]) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      width: 300,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.zero,
      content:
        Container(
          width: 300,
          // height: 80,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color:Color.fromARGB(255, 81, 146, 83) ,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.check_circle,color: Colors.white,),
               const  SizedBox(width: 10,),
                Expanded(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(message, textAlign: TextAlign.center),
                      ],
                    )),
              ],
            )),
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      onVisible: onVisible,
    ));
  }

  void showSnackBarNormal(String message, [VoidCallback? onVisible]) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(width: 200,
      content: Text(message, textAlign: TextAlign.center),
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      onVisible: onVisible,
    ));
  }

  // void showToastError(String message) {
  //   Fluttertoast.showToast(
  //     msg: message,
  //     toastLength: Toast.LENGTH_LONG,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 3,
  //     webShowClose: true,
  //     webPosition: "center",
  //     webBgColor: "#FF0000",
  //     backgroundColor: Colors.red,
  //     textColor: Colors.white,
  //     fontSize: 16.0,
  //   );
  // }

  // void showToast(String message) {
  //   Fluttertoast.showToast(
  //     msg: message,
  //     toastLength: Toast.LENGTH_LONG,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 1,
  //     backgroundColor: Colors.green,
  //     textColor: Colors.white,
  //     fontSize: 16.0,
  //   );
  // }
// void showFlushBarError(String message, [String? title]) {
//   Flushbar(
//     margin: EdgeInsets.all(10),
//     borderRadius: BorderRadius.circular(8),
//     title: title,
//     icon: Icon(Icons.error),
//     backgroundColor: ColorsRes.lightRed,
//     barBlur: 10,
//     messageText: Text(
//       message,
//       style: TextStyle(color: Colors.white),
//     ),
//     duration: Duration(seconds: 3),
//     isDismissible: false,
//   )..show(this);
// }

// void showFlushBarSuccess(String message, [String? title]) {
//   Flushbar(
//     margin: EdgeInsets.all(10),
//     borderRadius: BorderRadius.circular(8),
//     title: title,
//     icon: Icon(Icons.check_circle_outline_rounded),
//     backgroundColor: ColorsRes.accentColor,
//     barBlur: 8,
//     messageText: Text(
//       message,
//       style: TextStyle(color: Colors.white),
//     ),
//     duration: Duration(seconds: 3),
//     isDismissible: false,
//   )..show(this);
// }
}
//
// void launchUrl(String url) {
//   urlLauncher.canLaunch(url).then((value) {
//     if (value) urlLauncher.launch(url);
//   });
// }
