import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
              text: TextSpan(
                  text: "Hai,  ",
                  style: TextStyle(fontSize: 18),
                  children: [
                TextSpan(
                    text: "Sahabat Data",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
              ])),
          centerTitle: false,
          backgroundColor: Color(0xff238dcd),
          elevation: 0,
        ),
        body: Stack(
          children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                height: 250,
                width: Get.width,
                color: Color(0xff238dcd),
              ),
            )
          ],
        ));
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
