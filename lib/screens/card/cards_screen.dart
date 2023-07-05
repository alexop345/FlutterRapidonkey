import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/models/card.dart';
import 'package:flutter_rapidonkey/themes/app_dimensions.dart';
import 'package:flutter_rapidonkey/widgets/card_widget.dart';

class CardsScreen extends StatelessWidget {
  CardsScreen({super.key});

  final List<AppCard> cards = [
    AppCard(
      service: CardService.dropOff,
      status: CardStatus.selected,
      street: 'Strada Hateg 32, Bloc n1',
      city: 'Cluj-Napoca',
      orders: 2,
    ),
    AppCard(
      service: CardService.pickUp,
      status: CardStatus.incomplete,
      street: 'Piata Unirii 16',
      city: 'Cluj-Napoca',
      orders: 1,
      restaurant: 'Perfeto Pizza Italiano',
    ),
    AppCard(
      service: CardService.dropOff,
      status: CardStatus.complete,
      street: 'Strada Hateg 32, Bloc n1',
      city: 'Cluj-Napoca',
      orders: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.normalSpacing,
              vertical: AppDimensions.defaultSpacing,
            ),
            child: CardWidget(cards[index]),
          );
        },
      ),
    );
  }
}
