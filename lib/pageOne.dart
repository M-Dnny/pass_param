import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pass_param/pageTwo.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  TextEditingController textField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('PageOne'),
            TextField(
              controller: textField,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageTwo(
                        textField: textField.text.toString(),
                      ),
                    ),
                  );
                },
                child: Text("GO TO PAGE TWO"))
          ],
        ),
      ),
    );
  }
}
