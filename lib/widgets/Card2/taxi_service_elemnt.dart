import 'package:flutter/material.dart';

class TaxiServiceElement extends StatelessWidget {
  const TaxiServiceElement({super.key, required this.logoPath});

  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 244, 244, 244)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 9),
              child: Image.asset(logoPath),
            ),
            const Text(
              "\$\$\$\$\$",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3),
            )
          ],
        ),
      ),
    );
  }
}
