import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width / 25,
                    top: size.height / 40,
                    bottom: size.height / 100),
                child: Text(
                  'Stores',
                  style: TextStyle(
                    fontSize: size.width / 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    my_stori_container(size),
                    storeies_container(size, 'assets/images/aydin3.png', true),
                    storeies_container(
                        size, 'assets/images/aydin_profil.png', true),
                    storeies_container(
                        size, 'assets/images/profile1.png', true),
                    storeies_container(
                        size, 'assets/images/profile2.png', true),
                    storeies_container(
                        size, 'assets/images/profile3.png', true),
                    storeies_container(
                        size, 'assets/images/profile4.png', true),
                  ],
                ),
              ),
              cizgi_container(size),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width / 28,
                  right: size.width / 28,
                ),
                child: post(size, 'assets/images/56a8dc0a942d8.png',
                    'assets/images/aydin2.png', 'Ankara', 'Aydin Nazari'),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width / 28,
                    right: size.width / 28,
                    top: size.height / 30),
                child: post(
                  size,
                    'assets/images/istanbul-aa-1924304.png',
                    'assets/images/aydin3.png',
                    'Istanbul',
                    'Arman Khada'
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack post(Size size, String cityUrl, String profileUrl, String name,
      String CityName) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                25,
              ),
            ),
          ),
        ),
        Row(
          children: [
            storeies_container(size, profileUrl, false),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height / 50, left: size.width / 50),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: size.width / 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width / 40),
                  child: Text(
                    CityName,
                    style: const TextStyle(fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                right: size.width / 25,
              ),
              child: const Icon(
                Icons.more_vert_rounded,
              ),
            )
          ],
        ),
        Positioned(
          left: size.width / 15,
          right: size.width / 15,
          child: Padding(
            padding: EdgeInsets.only(top: size.height / 10),
            child: Container(
              width: size.width,
              height: size.height / 3,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(cityUrl),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: size.height / 50,
          left: size.width / 10,
          child: Text(
            '963 Likes',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: size.width / 26,
                color: Colors.grey.shade700),
          ),
        ),
        Positioned(
          right: size.width / 10,
          bottom: size.height / 10,
          child: Icon(
            Icons.favorite,
            size: size.width / 12,
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  Padding cizgi_container(Size size) {
    return Padding(
      padding: EdgeInsets.only(
          left: size.width / 10,
          right: size.width / 10,
          bottom: size.height / 50,
          top: size.height / 40),
      child: Container(
        width: size.width,
        height: size.height / 200,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
        ),
      ),
    );
  }

  Padding storeies_container(Size size, String imgUrl, bool control) {
    return Padding(
      //control == true ? büyük storie görünumu else küçük
      padding: EdgeInsets.only(
          left: control ? size.width / 35 : size.width / 25,
          top: control ? 0 : size.height / 50),
      child: Container(
        width: control ? size.width / 6 : size.width / 12,
        height: control ? size.width / 6 : size.width / 12,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffa83333),
        ),
        child: Padding(
          padding: EdgeInsets.all(control ? 5.2 : 0),
          child: Container(
            width: size.width / 6,
            height: size.width / 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imgUrl,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding my_stori_container(Size size) {
    return Padding(
      padding: EdgeInsets.only(
        left: size.width / 25,
      ),
      child: Stack(
        children: [
          Container(
            width: size.width / 6,
            height: size.width / 6,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/aydin2.png',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            right: 0,
            child: Container(
              width: size.width / 18,
              height: size.width / 18,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: size.width / 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
