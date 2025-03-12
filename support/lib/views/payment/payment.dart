// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';

// class Payment extends StatefulWidget {
//   const Payment({super.key});

//   @override
//   State<Payment> createState() => _PaymentState();
// }

// class _PaymentState extends State<Payment> {
//   String? cardNumber;
//   String? expiryDate;
//   String? cardHolderName;
//   String? cvvCode;
//   bool? isCvvFocused;

//   void demo() {}
//   @override
//   Widget build(BuildContext context) {
//     return CreditCardWidget(
//           cardNumber: cardNumber??'',
//           expiryDate: expiryDate??'',
//           cardHolderName: cardHolderName??'',
//           cvvCode: cvvCode??'',
//           showBackView: isCvvFocused??true,
//           onCreditCardWidgetChange: (CreditCardBrand brand) {},
//           bankName: 'Name of the Bank',
//           cardBgColor: Colors.black87,
//           glassmorphismConfig: Glassmorphism.defaultConfig(),
//           enableFloatingCard: true,
//           floatingConfig: FloatingConfig(
//             isGlareEnabled: true,
//             isShadowEnabled: true,
//             shadowConfig: FloatingShadowConfig(),
//           ),
//           backgroundImage: 'assets/card_bg.png',
//           backgroundNetworkImage: 'https://www.xyz.com/card_bg.png',
//           labelValidThru: 'VALID\nTHRU',
//           obscureCardNumber: true,
//           obscureInitialCardNumber: false,
//           obscureCardCvv: true,
//           labelCardHolder: 'CARD HOLDER',
//           // labelValidThru: 'VALID\nTHRU',
//           cardType: CardType.mastercard,
//           isHolderNameVisible: false,
//           height: 175,
//           textStyle: TextStyle(color: Colors.yellowAccent),
//           width: MediaQuery.of(context).size.width,
//           isChipVisible: true,
//           isSwipeGestureEnabled: true,
//           animationDuration: Duration(milliseconds: 1000),
//           frontCardBorder: Border.all(color: Colors.grey),
//           backCardBorder: Border.all(color: Colors.grey),
//           chipColor: Colors.red,
//           padding: 16,
//           // customCardTypeIcons: <CustomCardTypeIcons>[
//           //   CustomCardTypeIcons(
//           //     cardType: CardType.mastercard,
//           //     cardImage: Image.asset(
//           //       'assets/mastercard.png',
//           //       height: 48,
//           //       width: 48,
//           //     ),
//           //   ),
//           // ],
//         );
//   }
// }
