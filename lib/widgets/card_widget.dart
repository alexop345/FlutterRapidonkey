import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/models/card.dart';
import 'package:flutter_rapidonkey/themes/app_colors.dart';
import 'package:flutter_rapidonkey/themes/app_dimensions.dart';
import 'package:flutter_rapidonkey/themes/app_font_style.dart';

class CardWidget extends StatelessWidget {
  final AppCard card;

  const CardWidget(this.card, {super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: _cardBg(card.status),
        border: Border.all(color: AppColors.cardBorder),
        borderRadius: BorderRadius.circular(AppDimensions.defaultPlusRadius),
      ),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.defaultPlusSpacing,
                vertical: AppDimensions.defaultSpacing,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _cardServiceTitle(card.service),
                    style: _cardServiceTitleStyle(card.status),
                  ),
                  Text(
                    card.street,
                    style: AppFontStyle.cardText,
                  ),
                  Text(
                    card.city,
                    style: AppFontStyle.cardText
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    _cardOrderText(card.orders),
                    style: AppFontStyle.cardText,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: AppDimensions.defaultSpacing,
              right: AppDimensions.defaultSpacing,
              child: _cardIcon(card.status),
            ),
          ],
        ),
      ),
    );
  }

  Color _cardBg(CardStatus status) {
    switch (status) {
      case CardStatus.complete:
        return AppColors.inactive;
      case CardStatus.incomplete:
        return AppColors.white;
      case CardStatus.selected:
        return AppColors.selected;
    }
  }

  String _cardServiceTitle(CardService type) {
    switch (type) {
      case CardService.dropOff:
        return 'Drop-off to';
      case CardService.pickUp:
        return 'Pick-up from';
    }
  }

  TextStyle _cardServiceTitleStyle(CardStatus status) {
    switch (status) {
      case CardStatus.complete:
        return AppFontStyle.cardText.copyWith(color: AppColors.inactiveDark);
      case CardStatus.incomplete:
        return AppFontStyle.cardText.copyWith(color: AppColors.secondary);
      case CardStatus.selected:
        return AppFontStyle.cardText.copyWith(color: AppColors.white);
    }
  }

  String _cardOrderText(int number) {
    return '$number ${number == 1 ? 'order' : 'orders'}';
  }

  Icon _cardIcon(CardStatus status) {
    switch (status) {
      case CardStatus.complete:
        return const Icon(
          Icons.check,
          size: 20,
          color: AppColors.selected,
        );
      case CardStatus.incomplete:
        return const Icon(
          Icons.drag_indicator_sharp,
          size: 20,
          color: AppColors.selected,
        );
      case CardStatus.selected:
        return const Icon(
          Icons.drag_indicator_sharp,
          size: 20,
          color: AppColors.white,
        );
    }
  }
}
