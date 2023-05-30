import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    super.key,
    required this.income,
    required this.transaction,
  });
  final bool income;
  final String transaction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        income == true ? SvgPicture.asset("assets/svg/income.svg") : SvgPicture.asset("assets/svg/outBalance.svg"),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                income == true ? "Incoming Balance" : "Out Balance",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                income == true ? "You have just filled out the balance on the Tengo ewallet" : "You have just made a payment transaction",
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Text(
          transaction,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
