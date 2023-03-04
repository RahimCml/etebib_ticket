import 'package:flutter/material.dart';

class OnlineTicketScreen extends StatefulWidget {
  const OnlineTicketScreen({super.key});

  @override
  State<OnlineTicketScreen> createState() => _OnlineTicketScreenState();
}

class _OnlineTicketScreenState extends State<OnlineTicketScreen> {

  dynamic _selectedHospital;
  dynamic _selectedDistrict;
  dynamic _selectedDoctor;
  bool checkData= false;


  final List<String> _hospitals = ['5 sayli', '3 sayli', '1 sayli'];
  final List<String> _districts = ['Nerimanov', 'Sabuncu', 'Nesimi'];
  final List<Object> _doctors = ['Dr. Abbas Abbasov', 'Dr. Fatime Asadova', 'Dr. Ilyas Xuduyev'];
  final dynamic _districtsData = {
      'Sabuncu': [{
        'name': '3 sayli ',
        'location': 'Sabuncu',
        'doctors': {
          'name': 'Abbas Abbasov',
          'specialty': 'UZI',
          'date': {
            'day': int,
            'availableHour': [9, 14]
          }
        }
      }],
      'Nerimanov':[
        {
        'name': '5 sayli',
        'location': 'Nerimanov',
        'doctors': [{
          'name': 'Fatime Asadova',
          'specialty': 'Goz',
          'date': {
            'day': int,
            'availableHour': [9, 15]
          }
        }]
      },
      {
        'name': '6 sayli',
        'location': 'Nerimanov',
      }
      ],
      'Nesimi': [{
        'name': '1 sayli',
        'location': 'Nesimi',
        'doctors': [ {
          'name': 'Ilyas Xuduyev',
          'specialty': 'Terapevt',
          'date': {
            'day': int,
            'availableHour': [9, 15]
          }
        }]
      }]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Container(
        color: const Color.fromARGB(255, 230, 237, 244),
        padding: const EdgeInsets.all(80),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              const Text('Rayon'),
              _districtDrop(),
              checkData == true ? _hospitalDrop() : const Text('Rayon secin'),
              // _hospitalWidget()
            ],
          ),
        ),
      ),
    )
  );
  }
    Widget _districtDrop() {
    return  DropdownButton(
      value: _selectedDistrict,
      items: _districts
        .map(
          (option) => DropdownMenuItem(
          child: Text(option),
          value: option,
          ),
          )
          .toList(),
            onChanged: (newValue) {
              setState(() {
              _selectedDistrict = newValue;
              var i = 0;
              while (i < _districtsData[_selectedDistrict].length) {
                if(_districtsData[_selectedDistrict][i]['location'] == _selectedDistrict) {
                checkData = true;
              }else {
                checkData = false;
              }
                i += 1;
              }
              });
            },
        hint: const Text('Rayon secin'),
    );
  }
    Widget _hospitalDrop() {
    return  Column(
      children: [
        const Text('* Xestexana'),
        DropdownButton(
          value: _selectedHospital,
          items: _hospitals
            .map(
              (option) => DropdownMenuItem(
              child: Text(option),
              value: option,
              ),
              )
              .toList(),
                onChanged: (newValue) {
                  setState(() {
                  // print('${_hospitalss['name']['besNomreli']}');
                  _selectedHospital = newValue;
                });
              },
            hint: const Text('Hospital secin'),
        ),
      ],
    );
  }
}