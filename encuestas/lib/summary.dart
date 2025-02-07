import 'package:flutter/material.dart';
import 'models/student.dart';

class SummaryPage extends StatelessWidget {
  final Function(int) onPageChange;
  final Student? student;

  const SummaryPage(
      {super.key, required this.onPageChange, required this.student});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Summary',
            style: TextStyle(fontSize: 40),
          ),
          Text(
            'Nombre: ${student?.name ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Teléfono: ${student?.phone ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Correo: ${student?.email ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Matrícula: ${student?.record ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Edad: ${student?.age ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Horario Preferencial: ${student?.horarioPreferencial ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Carrera a elegir: ${student?.carrera ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Especialidad: ${student?.especialidad ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Promedio: ${student?.promedio ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Sector Residencial: ${student?.sectorResidencial ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
              onPressed: () => onPageChange(0), child: Text('Listo')),
        ],
      ),
    );
  }
}
