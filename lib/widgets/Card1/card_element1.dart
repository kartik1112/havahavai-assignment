import 'package:flutter/material.dart';
import 'package:uiassignment/widgets/Card1/icon_button_no_outline.dart';
import 'package:uiassignment/widgets/Card1/tile_element.dart';

class ImageCardElement extends StatelessWidget {
  const ImageCardElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1661943659036-aa040d92ee64?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.black,
          ),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TileElement(
                                  text: "19 C",
                                  subtext: "Cloudy",
                                  assetPath: "assets/cloud.svg",
                                ),
                                TileElement(
                                  text: "30 Jan",
                                  subtext: "Mon",
                                  assetPath: "assets/calendar.svg",
                                ),
                                TileElement(
                                  text: "8:45 PM",
                                  subtext: "GMT+4",
                                  assetPath: "assets/time.svg",
                                ),
                                TileElement(
                                  text: "AED",
                                  subtext: "1\$ = 3.67AED",
                                  assetPath: "assets/currency.svg",
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 224, 224, 224),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                NoOutlineIconButton(
                                  buttonText: "Get Direction",
                                  iconData: Icons.directions,
                                ),
                                VerticalDivider(
                                  color: Color.fromARGB(255, 224, 224, 224),
                                ),
                                NoOutlineIconButton(
                                  iconData: Icons.phone,
                                  buttonText: "Call airport",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // color: Colors.amber,
        ),
      ],
    );
  }
}
