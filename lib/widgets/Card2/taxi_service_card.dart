import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiassignment/widgets/Card2/taxi_service_elemnt.dart';

class TaxiServiceCard extends StatelessWidget {
  const TaxiServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Wrap(
        // crossAxisCount: 3,
        alignment: WrapAlignment.spaceBetween,
        spacing: 10,
        runSpacing: 10,
        children: [
          TaxiServiceElement(
            logoPath: "assets/uberlogo.png",
          ),
          TaxiServiceElement(
            logoPath: "assets/careemlogo.png",
          ),
          TaxiServiceElement(
            logoPath: "assets/yangologo.png",
          ),
          TaxiServiceElement(
            logoPath: "assets/blacklanelogo.png",
          ),
        ],
      ),
    );
  }
}
