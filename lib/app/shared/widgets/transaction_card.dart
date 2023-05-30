import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.statusText,
    required this.statusColor,
    required this.price,
  });
  final String statusText;
  final Color statusColor;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage("assets/images/ayu.png"),
                    backgroundColor: Colors.grey[300],
                    radius: 20,
                  ),
                  const SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Ayu Safitry",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SvgPicture.asset("assets/svg/verifiedIcon.svg")
                        ],
                      ),
                      const Text(
                        "22/2/2023",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 80,
                height: 24,
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    statusText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Divider(
            color: Color(0xffB9B8C8),
            thickness: 0.5,
          ),
          const Text(
            "Psychology Talk: How to get rid of depression",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "23.59 - 02.00 WIB",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Text(
                "Premium",
                style: TextStyle(
                  color: Color(0xff122F77),
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
