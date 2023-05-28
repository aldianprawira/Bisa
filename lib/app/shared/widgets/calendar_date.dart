import 'package:flutter/material.dart';

class CalendarDate extends StatelessWidget {
  const CalendarDate({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.date,
  });
  final Color backgroundColor;
  final Color foregroundColor;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(999),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          date,
          style: TextStyle(
            color: foregroundColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
