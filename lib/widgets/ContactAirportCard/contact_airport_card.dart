import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiassignment/widgets/ContactAirportCard/contact_airport_element.dart';

class ContactAirportCard extends StatelessWidget {
  const ContactAirportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          ContactAirportElement(title: "Police"),
          Divider(
            color: Color.fromARGB(255, 230, 230, 230),
          ),
          ContactAirportElement(title: "Lost and Found"),
          Divider(
            color: Color.fromARGB(255, 230, 230, 230),
          ),
          ContactAirportElement(title: "Transport"),
          Divider(
            color: Color.fromARGB(255, 230, 230, 230),
          ),
          ContactAirportElement(title: "Head Office"),
        ],
      ),
    );
  }
}
