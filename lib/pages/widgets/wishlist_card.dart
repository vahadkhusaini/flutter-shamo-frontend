import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class WishlistCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/image_shoes.png',
            width: 60,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adidas NEO',
                style: primaryTextStyle.copyWith(fontWeight: semibold),
              ),
              Text(
                '\$145,89',
                style: priceTextStyle,
              )
            ],
          ),
        ),
        Image.asset(
          'assets/button_wishlist_blue.png',
          width: 34,
        )
      ]),
    );
  }
}
