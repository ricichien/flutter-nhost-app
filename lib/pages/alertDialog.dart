import 'package:flutter/material.dart';

class Widget005 extends StatefulWidget {
  const Widget005({super.key});

  @override
  State<Widget005> createState() => _Widget005State();
}

class _Widget005State extends State<Widget005> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Alert Dialog'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
              title: const Text('Flutter App'),
            ),
          );
        },
      ),
    );
  }
}
