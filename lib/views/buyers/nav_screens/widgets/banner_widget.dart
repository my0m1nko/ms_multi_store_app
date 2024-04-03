import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.yellow.shade900,
          borderRadius: BorderRadius.circular(10),
          
        ),
        child: PageView(
          children: [
            Image.asset('assets/images/banner1.jpg', fit: BoxFit.cover),
            Image.asset('assets/images/banner2.jpg', fit: BoxFit.cover),
            Image.asset('assets/images/banner3.jpg', fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}