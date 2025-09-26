import 'package:flutter/material.dart';

void main() => runApp(ContactListApp());

class ContactListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ContactListPage(),
    );
  }
}

class Contact {
  final String name;
  final String number;

  Contact(this.name, this.number);
}

class ContactListPage extends StatefulWidget {
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final List<Contact> contacts = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  void addContact() {
    final name = nameController.text.trim();
    final number = numberController.text.trim();
    if (name.isNotEmpty && number.isNotEmpty) {
      setState(() {
        contacts.add(Contact(name, number));
        nameController.clear();
        numberController.clear();
      });
    }
  }

  void confirmDelete(int index) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Confirmation'),
        content: Text('Are you sure for Delete?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() => contacts.removeAt(index));
              Navigator.of(ctx).pop();
            },
            child: Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  Widget buildContactTile(Contact contact, int index) {
    return GestureDetector(
      onLongPress: () => confirmDelete(index),
      child: ListTile(
        title: Text(contact.name),
        subtitle: Text(contact.number),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.call, color: Colors.green),
            SizedBox(width: 10),
            Icon(Icons.delete, color: Colors.red),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact List')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: numberController,
              decoration: InputDecoration(labelText: 'Number'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addContact,
              child: Text('Add'),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (ctx, index) =>
                    buildContactTile(contacts[index], index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}