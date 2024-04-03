import 'package:flutter/material.dart';
import 'package:ms_multi_store/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:ms_multi_store/views/buyers/nav_screens/widgets/search_input.dart';
import 'package:ms_multi_store/views/buyers/nav_screens/widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        WelcomeText(),
        SizedBox( 
          height: 14,
        ),
       SearchInput(),
       SizedBox(
          height: 14,
        ),
       BannerWidget()
      ],
    );
  }
}

