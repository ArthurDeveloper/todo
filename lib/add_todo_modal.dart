import 'package:flutter/material.dart';

class AddTodoModal extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return AddTodoModalState();
    }
}

class AddTodoModalState extends State<AddTodoModal> {
        @override
        Widget build(BuildContext context) {
            return AlertDialog(
                title: Text('Add some task...'),
                actions: <Widget>[
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                            'CANCEL', 
                            style: TextStyle(
                                color: Colors.grey,
                            ),
                        ),
                    ),
                    TextButton(
                        // TODO: Make it actually add a todo before vanishing
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('ADD'),
                    ),
                ],
            );
        }
}

