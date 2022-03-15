import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, required this.challengeImg, required this.title})
      : super(key: key);
  final String challengeImg;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      flexibleSpace: _headerImage(),

      toolbarHeight: 30,
      iconTheme: const IconThemeData(color: Colors.red, size: 30),

      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),

      bottom: PreferredSize(
        child: Text(title,
            style: const TextStyle(color: Colors.white, fontSize: 36)),
        preferredSize: const Size(double.infinity, 100),
      ),
      // pinned: true,
    );
  }

  Widget _headerImage() {
    return Image.network(
      challengeImg,
      fit: BoxFit.cover,
    );
  }
}
