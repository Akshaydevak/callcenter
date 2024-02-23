// import 'package:shared_preferences/shared_preferences.dart';

// class UserSimplePreferences {
//   static const _keyUserId = 'userid';
//   static SharedPreferences _preferences;
//   static Future init() async => _preferences = await SharedPreferences.getInstance();
//   static Future setUserId(int userid ) async => 
//   await _preferences .setInt(_keyUserId, userid);
// static int? getUserId() => _preferences.getInt(_keyUserId);
// }
// // _incrementCounter() async {
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   int counter = (prefs.getInt('counter') ?? 0) + 1;
// //   print('Pressed $counter times.');
// //   await prefs.setInt('counter', counter);
// // }