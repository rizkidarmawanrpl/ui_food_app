import 'package:flutter/material.dart';

class Commons {
  static void onTapMenu(BuildContext context, {text = String}) {
    final snackBar = SnackBar(
      content : Text(text),
      behavior: SnackBarBehavior.floating,
      action  : SnackBarAction(
        label    : 'Undo',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static dynamic onTapDialogMenu(BuildContext context, {text = String}) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext contex) => AlertDialog(
        title  : const Text('Informasi'),
        content: Text(text),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, 'OK'), child: const Text('OK')),
        ],
      ),
    );
  }
}