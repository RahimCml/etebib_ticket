import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OnlineTicketScreen extends StatefulWidget {
  const OnlineTicketScreen({super.key});

  @override
  State<OnlineTicketScreen> createState() => _OnlineTicketScreenState();
}

class _OnlineTicketScreenState extends State<OnlineTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Online randevu'),
    );
  }
}