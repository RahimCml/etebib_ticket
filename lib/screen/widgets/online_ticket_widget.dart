import 'package:flutter/material.dart';

class OnlineTicketWidget extends StatelessWidget {
  const OnlineTicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: const BoxDecoration(borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
      color: Color.fromARGB(255, 95, 169, 235)),
      child: const Center(child: Text('Online Randevu al')),
    );
  }
}