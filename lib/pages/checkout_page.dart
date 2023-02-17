import 'package:flutter/material.dart';
import 'package:shamo/pages/widgets/checkout_card.dart';
import 'package:shamo/theme.dart';

class CheckoutPage extends StatelessWidget {
  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      elevation: 0,
      centerTitle: true,
      title: Text('Checkout Page'),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Items',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              CheckoutCard(),
              CheckoutCard(),
              CheckoutCard(),
            ],
          ),
        ),

        // NOTE: ADDRESS DETAILS

        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address Details',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/icon_store_location.png',
                        width: 40,
                      ),
                      Image.asset(
                        'assets/icon_line.png',
                        height: 30,
                      ),
                      Image.asset(
                        'assets/icon_your_address.png',
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Store Location',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: light),
                      ),
                      Text(
                        'Adidas Store',
                        style: primaryTextStyle.copyWith(fontWeight: medium),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Text(
                        'Your Adress',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: light),
                      ),
                      Text(
                        'Jakarta',
                        style: primaryTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
