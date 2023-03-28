import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/logo/logo-white.png',
              fit: BoxFit.fitWidth,
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ]),
          centerTitle: true,
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
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              // color: Colors.amber,
              // height: Get.height * 0.5,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hai, Sahabat Data",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Universitas Brawiyaja",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 4,
                    color: Colors.grey[300],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      // color: Colors.red,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                border: Border.all(color: Colors.amber),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 25),
                            padding: EdgeInsets.all(20),
                            width: Get.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    itemKategori(
                                      title: "Kemiskinan",
                                      icon: "poverty",
                                    ),
                                    itemKategori(
                                      title: "Kependudukan",
                                      icon: "population",
                                    ),
                                    itemKategori(
                                      title: "Ketenagakerjaan",
                                      icon: "work",
                                    ),
                                    itemKategori(
                                      title: "Pertanian",
                                      icon: "agriculture",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    itemKategori(
                                      title: "Kemiskinan",
                                      icon: "poverty",
                                    ),
                                    itemKategori(
                                      title: "Kependudukan",
                                      icon: "population",
                                    ),
                                    itemKategori(
                                      title: "Ketenagakerjaan",
                                      icon: "work",
                                    ),
                                    itemKategori(
                                      title: "Pertanian",
                                      icon: "agriculture",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Publikasi Terbaru"),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.blue,
                                      child: Image.asset(
                                          "assets/icons/poverty.png"))
                                ],
                              )
                            ],
                          ),
                          Text("Publikasi Terbaru"),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.blue,
                                      child: Image.asset(
                                          "assets/icons/poverty.png"))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Navigation
                  Container(
                    margin: EdgeInsets.only(bottom: 0),
                    height: Get.height * 0.1,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ItemNav(
                          icon: "beranda",
                          status: true,
                          title: "Beranda",
                        ),
                        ItemNav(
                          icon: "riwayat",
                          status: false,
                          title: "Riwayat",
                        ),
                        ItemNav(
                          icon: "bantuan",
                          status: false,
                          title: "Bantuan",
                        ),
                        ItemNav(
                          icon: "inbox",
                          status: false,
                          title: "Inbox",
                        ),
                        ItemNav(
                          icon: "profil",
                          status: false,
                          title: "Akun Saya",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class itemKategori extends StatelessWidget {
  const itemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 45,
            height: 45,
            // color: Colors.blue,
            child: Image.asset(
              "assets/icons/$icon.png",
              fit: BoxFit.cover,
            )),
        SizedBox(height: 5),
        Text(
          this.title,
          style: TextStyle(fontSize: 10),
        )
      ],
    );
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

class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 20,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.none,
          ),
        ),
        SizedBox(height: 5),
        Text(
          this.title,
          style: TextStyle(
            color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}
