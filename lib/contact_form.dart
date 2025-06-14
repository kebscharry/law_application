import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  Future<void> submitForm() async {
    if (_formKey.currentState!.validate()) {
      // await FirebaseFirestore.instance.collection('messages').add({
      //   'name': nameController.text,
      //   'email': emailController.text,
      //   'message': messageController.text,
      //   'timestamp': FieldValue.serverTimestamp(),
      // });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Message sent!')),
      );

      nameController.clear();
      emailController.clear();
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: "Your Name"),
                  validator: (value) => value!.isEmpty ? "Enter name" : null,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: "Email"),
                  validator: (value) => value!.isEmpty ? "Enter email" : null,
                ),
                TextFormField(
                  controller: messageController,
                  decoration: InputDecoration(labelText: "Message"),
                  maxLines: 4,
                  validator: (value) => value!.isEmpty ? "Enter message" : null,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: submitForm, child: Text("Send"))
              ],
            )),
      ),
    );
  }
}
