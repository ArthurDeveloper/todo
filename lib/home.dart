import 'package:flutter/material.dart';
import 'add_todo_modal.dart';

class Home extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return HomeState();
    }
}

class HomeState extends State<Home> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Howdy!'),
            ),
            body: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                    return Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide( color: Colors.grey )),
                        ),
                        child: ListTile(
                            title: const Text('Howdy!'),
                            subtitle: const Text('Howdy'),
                        ),
                    );
                },
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () => showDialog<void>(
                    context: context,
                    builder: (BuildContext context) => AddTodoModal(),
                ),
                tooltip: 'add',
                child: Icon(Icons.add),
            ),
        );
    }
}

