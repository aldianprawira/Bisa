import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    super.key,
  });

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
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage("assets/images/ayu.png"),
                backgroundColor: Colors.grey[300],
                radius: 20,
              ),
              const SizedBox(width: 4),
              const Column(
                children: [
                  Text(
                    "Ayu Safitry",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "22/2/2023",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
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
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Premium",
                style: TextStyle(
                  color: Color(0xff1B51DD),
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff122F77),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fixedSize: const Size(120, 40),
                ),
                child: const Text(
                  "Join Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
