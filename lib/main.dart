import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Praktik Mandiri 7'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Contact {
  final String name;
  final String phoneNumber;
  final String imageUrl;

  Contact(
      {required this.name, required this.phoneNumber, required this.imageUrl});
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Contact> contacts = [
    Contact(
      name: 'Ardi',
      phoneNumber: '123-456-7890',
      imageUrl: 'https://picsum.photos/200',
    ),
    Contact(
      name: 'Firman',
      phoneNumber: '987-654-3210',
      imageUrl: 'https://picsum.photos/200',
    ),
    Contact(
      name: 'Lord',
      phoneNumber: '987-654-3210',
      imageUrl: 'https://picsum.photos/200',
    ),
    Contact(
      name: 'Gerdy',
      phoneNumber: '987-654-3210',
      imageUrl: 'https://picsum.photos/200',
    ),
    Contact(
      name: 'Gerdas',
      phoneNumber: '987-654-3210',
      imageUrl: 'https://picsum.photos/200',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contacts[index].imageUrl),
            ),
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phoneNumber),
            // Tambahkan fungsi onTap atau aksi lainnya di sini.
          );
        },
      ),
    );
  }
}
