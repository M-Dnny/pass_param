import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key, this.textField}) : super(key: key);

  final textField;

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  void initState() {
    print(widget.textField);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('PageTwo'),
            Text(widget.textField),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("GO TO PAGE TWO"))
          ],
        ),
      ),
    );
  }
}
