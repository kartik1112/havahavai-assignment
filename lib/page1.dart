import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uiassignment/page2.dart';
import 'package:uiassignment/widgets/Card1/card_element1.dart';
import 'package:uiassignment/widgets/TaxiServiceCard/taxi_service_card.dart';
import 'package:uiassignment/widgets/ContactAirportCard/contact_airport_card.dart';
import 'package:uiassignment/widgets/ForeighnExchangeCard/foreign_exchange_card.dart';
import 'package:uiassignment/widgets/GeneralWidgets/general_card.dart';
import 'package:uiassignment/widgets/GeneralWidgets/generic_button.dart';
import 'package:uiassignment/widgets/PublicTransportCard/public_transport_card.dart';
import 'package:uiassignment/widgets/SelfParkingCard/self_parking_card.dart';
import 'package:uiassignment/widgets/TerminalMapCard/terminal_map.dart';
import 'package:uiassignment/widgets/rounded_chip_element.dart';

class PageWidgte extends StatelessWidget {
  const PageWidgte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.white),
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Dubai Airport - DXB",
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Dubai .🇦🇪 United Arab Emirates",
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ];
        },
        body: Padding(
          // padding: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ImageCardElement(),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      RoundedChipElement(isSelected: true, text: "Transport"),
                      RoundedChipElement(isSelected: false, text: "Terminal"),
                      RoundedChipElement(isSelected: false, text: "Forex"),
                      RoundedChipElement(
                        isSelected: false,
                        text: "Contact info",
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Taxi Service", child: TaxiServiceCard()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Public Transport", child: PublicTransportCard()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Self Parking", child: SelfParkingCard()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Terminal Map", child: TerminalCardWidget()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Foreign Exchange", child: ForeignExchangeCard()),
                const SizedBox(
                  height: 25,
                ),
                const GeneralCardWidget(
                    title: "Contact Airport", child: ContactAirportCard()),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GenericButton(
                          buttonIcon: Icons.directions,
                          buttonText: "Get Direction"),
                      SizedBox(
                        width: 12,
                      ),
                      GenericButton(
                          buttonIcon: Icons.phone, buttonText: "Call Airport"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
