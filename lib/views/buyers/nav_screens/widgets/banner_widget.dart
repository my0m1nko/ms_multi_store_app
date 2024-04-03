
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  final List _bannerImages = [];

  getBanners() async{
    return await _fireStore
        .collection('banners')
        .get()
        .then((QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
        setState(() {
          _bannerImages.add(doc['image']);
        });
      }
    });
  }

  @override
  void initState() {
    getBanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.yellow.shade900,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: PageView.builder(
              itemCount: _bannerImages.length,
              itemBuilder: (context, index) {
                return Image.network(
                  _bannerImages[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ));
  }
}
