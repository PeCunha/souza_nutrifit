import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.eco_rounded,
            color: Colors.white,
            size: 28,
          ),
        ),
        const SizedBox(width: 10),
        RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: 'Nutri', style: TextStyle(color: AppColors.primary)),
              TextSpan(text: 'Fit', style: TextStyle(color: AppColors.primaryDark)),
            ],
          ),
        ),
      ],
    );
  }
}