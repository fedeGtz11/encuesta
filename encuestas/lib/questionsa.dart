import 'package:flutter/material.dart';

class QuestionsAPage extends StatefulWidget {
  final Function(int) onPageChange;

  const QuestionsAPage({super.key, required this.onPageChange});

  @override
  State<QuestionsAPage> createState() => _QuestionsAPageState();
}

class _QuestionsAPageState extends State<QuestionsAPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: '¿Cuál es tu nombre?'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar el nombre';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: '¿Cuál es tu telefono?'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar el telefono';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: '¿Cuál es tu correo?'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar el correo';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: '¿Cuál es tu matricula?'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar la matricula';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: '¿Cuál es tu edad?'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar la edad';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                //las a realizar
                widget.onPageChange(3);
              }
            },
            child: Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
