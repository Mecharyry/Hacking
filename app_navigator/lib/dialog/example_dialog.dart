import 'package:flutter/material.dart';

class ExampleDialog extends StatelessWidget {
  final String _message;

  const ExampleDialog({Key? key, required String message})
      : _message = message,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Dialog Title'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(_message),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Dismiss'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
