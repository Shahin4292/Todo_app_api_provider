import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
              itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.white,
                title: const Text("title"),
                subtitle: const Text("subtitle"),
                trailing: PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem(
                        value: "edit",
                        child: Text("Edit"),
                    ),
                    const PopupMenuItem(
                      value: "delete",
                        child: Text("delete"))
                  ],
                  onSelected: (String value) {
                    if(value == "edit"){}
                    if(value == "delete"){}
                  },
                ),
              ),
            );
          }
          )
        ],
      ),
    );
  }
}
