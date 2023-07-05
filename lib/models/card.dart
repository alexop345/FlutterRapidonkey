class AppCard {
  final CardService service;
  final CardStatus status;
  final String? restaurant;
  final String street;
  final String city;
  final int orders;

  AppCard({
    required this.service,
    required this.status,
    required this.street,
    required this.city,
    required this.orders,
    this.restaurant,
  });
}

enum CardService { dropOff, pickUp }

enum CardStatus { complete, selected, incomplete }
