import 'package:flutter/material.dart';

class OnlineTicketScreen extends StatefulWidget {
  const OnlineTicketScreen({super.key});

  @override
  State<OnlineTicketScreen> createState() => _OnlineTicketScreenState();
}

class _OnlineTicketScreenState extends State<OnlineTicketScreen> {

  dynamic _selectedHospital;

  final List<String> _hospitals = ['5 nomreli', '6 nomreli', 'Semashka'];

  void _hospitalSelected () {
    if(_selectedHospital) {
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
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
                  _selectedHospital = newValue;
                });
              },
              hint: const Text('Hospital secin'),
            ),
            _hospitalWidget()
          ],
        ),
      ),
    )
  );
  }
  Widget _hospitalWidget() {
    return _selectedHospital != null ? Text('$_selectedHospital') : const Text('');
  }
}