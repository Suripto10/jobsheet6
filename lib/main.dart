import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hallo Dunia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MahasiswaList(),
    );
  }
}

class MahasiswaList extends StatefulWidget {
  @override
  _MahasiswaListState createState() => _MahasiswaListState();
}

class _MahasiswaListState extends State<MahasiswaList> {
  List<Map<String, dynamic>> _mahasiswa = [
    {'nama': 'SURIPTO', 'warna': const Color.fromARGB(255, 25, 245, 32)},
    {
      'nama': 'Rizka Nur Kharifah',
      'warna': const Color.fromARGB(255, 20, 18, 20)
    },
    {
      'nama': 'Linda Senja Anggraeni',
      'warna': Color.fromARGB(255, 72, 45, 180)
    },
    {'nama': 'Yeza Yofanka', 'warna': Color.fromARGB(255, 215, 77, 26)},
    {
      'nama': 'Dwi Septi Lufiana',
      'warna': const Color.fromARGB(255, 226, 32, 19)
    },
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hallo Friend!!'),
        backgroundColor: Color.fromARGB(255, 236, 6, 29),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: _mahasiswa[_currentIndex]['nama'],
                style: TextStyle(
                    fontSize: 24,
                    color: _mahasiswa[_currentIndex]['warna'].withOpacity(0.8)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _currentIndex = (_currentIndex + 1) % _mahasiswa.length;
                });
              },
              child: Text('lanjut'),
            ),
          ],
        ),
      ),
    );
  }
}
