import 'package:flutter/material.dart';
import 'models/student.dart';

class QuestionsBPage extends StatefulWidget {
  final Function(int, Student) onPageChange;
  final Student? student;

  const QuestionsBPage({super.key, required this.onPageChange, required this.student});

  @override
  State<QuestionsBPage> createState() => _QuestionsBPageState();
}

class _QuestionsBPageState extends State<QuestionsBPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _horarioController = TextEditingController();
  final TextEditingController _carreraController = TextEditingController();
  final TextEditingController _especialidadController = TextEditingController();
  final TextEditingController _promedioController = TextEditingController();
  final TextEditingController _sectorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:
      Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Matricula: ${widget.student?.record ?? 'N/A'}', 
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Nombre: ${widget.student?.name ?? 'N/A'}', 
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Correo: ${widget.student?.email ?? 'N/A'}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Telefono: ${widget.student?.phone ?? 'N/A'}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Edad: ${widget.student?.age ?? 'N/A'}',
              style: TextStyle(fontSize: 20),
            ),

            TextFormField(
              decoration: InputDecoration(hintText: 'Horario Preferencial (Matutino/Vespertino) '),
              controller: _horarioController,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar el horario preferencial';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Carrera a Elegir'),
              controller: _carreraController,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar la carrera a elegir';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Especialidad'),
              controller: _especialidadController,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar la especialidad';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Promedio'),
              controller: _promedioController,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar el promedio';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Sector Residencial (norte, sur, poniente, etc)'),
              controller: _sectorController,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'falta llenar el sector';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Student updatedStudent = Student(
                    widget.student!.name,
                    widget.student!.phone,
                    widget.student!.email,
                    widget.student!.record,
                    widget.student!.age,
                    _horarioController.text,
                    _carreraController.text,
                    _especialidadController.text,
                    _promedioController.text,
                    _sectorController.text,
                  );
                  widget.onPageChange(4, updatedStudent);
                }
              },
              child: Text('Terminar'),
            ),
          ],
        ),
      ),
    );
  }
}
