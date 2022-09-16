import 'package:eacademia/AdminComponents/DefaultTextField.dart';
import 'package:flutter/material.dart';

import '../../Colors.dart';

class SubmitNotePage extends StatefulWidget {
  const SubmitNotePage({Key? key}) : super(key: key);

  @override
  State<SubmitNotePage> createState() => _SubmitNotePageState();
}

class _SubmitNotePageState extends State<SubmitNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Note'),
        backgroundColor: blue,
        elevation: 0,
        excludeHeaderSemantics: true,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: 200,
        color: green,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              DefaultTextField(hintText: "Note Title"),
            ],
          ),
        ),
      ),
    );
  }
}
