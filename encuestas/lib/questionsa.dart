import 'package:flutter/material.dart';
import 'models/student.dart';

class QuestionsAPage extends StatefulWidget {
  final Function(int, Student) onPageChange;

  const QuestionsAPage({super.key, required this.onPageChange});

  @override
  State<QuestionsAPage> createState() => _QuestionsAPageState();
}

class _QuestionsAPageState extends State<QuestionsAPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _recordController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _horarioController = TextEditingController();
  final TextEditingController _carreraController = TextEditingController();
  final TextEditingController _especialidadController = TextEditingController();
  final TextEditingController _promedioController = TextEditingController();
  final TextEditingController _sectorController = TextEditingController();

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
              controller: _nameController,
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
              controller: _phoneController,
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
              controller: _emailController,
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
              controller: _recordController,
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
              controller: _ageController,
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
                Student student = Student(
                    _nameController.text,
                    _phoneController.text,
                    _emailController.text,
                    _recordController.text,
                    _ageController.text,
                    _horarioController.text,
                    _carreraController.text,
                    _especialidadController.text,
                    _promedioController.text,
                    _sectorController.text);

                widget.onPageChange(3, student);
              }
            },
            child: Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
