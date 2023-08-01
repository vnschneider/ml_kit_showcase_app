// ignore_for_file: file_names

import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';

Future showToastMessage({required String message}) async {
  await Fluttertoast.cancel();

  Fluttertoast.showToast(
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    textColor: const Color(0xffE6E1E5),
    backgroundColor: const Color(0xff49454F),
    msg: message,
    fontSize: 14,
  );
}
