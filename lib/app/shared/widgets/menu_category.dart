import 'package:flutter/material.dart';

class MenuCategory extends StatelessWidget {
  const MenuCategory({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });
  final String image;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 170,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 200,
                  maxHeight: 225,
                ),
                child: Container(
                  width: 170,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 8,
                  ),
                  color: const Color(0xffEAF0FF),
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
              Container(
                height: 24,
                color: const Color(0xff2D68FF),
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
