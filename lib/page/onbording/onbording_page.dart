import 'dart:ffi';

import 'package:caivideo/page/auth/registrasi/register.dart';
import 'package:caivideo/page/home/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MainPage()),
    );
  }

  Widget _buildImage(String assetName, [double? width]) {
    return Container(
      child: Image.asset('assets/$assetName', width: width),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 15.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,

      pages: [
        PageViewModel(
          title: "CAIvideo",
          body:
              "CAIvideo merupakan aplikasi video portal yang menampung kreatifitas anda sebagai sumber penghasilan jangka pendek & jangka panjang",
          image: ImageCard(
            assets: 'image/onbording/on1.png',
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "CAIvideo",
          body:
              "Semakin banyak video yang anda unggah semakin besar kesempatan anda untuk mendapatkan hasil dari iklan di channel anda",
          image: ImageCard(
            assets: 'image/onbording/on2.png',
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "CAIvideo",
          body:
              "Hanya membayar Rp 350.000 anda bisa menjual channel CAI video kepada siapapun",
          image: ImageCard(
            assets: 'image/onbording/on3.png',
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "CAIvideo",
          body:
              "Bonus tambahan 100 juta bagi anda yang mencapai kedalaman 7 sempurna dari tanggal 15 juni - 15 juli 2021",
          image: ImageCard(
            assets: 'image/onbording/on4.png',
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "CAIvideo",
          body: "Buat akun sekarang atau lewatkan",
          image: _buildImage('image/logo.png'),
          footer: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            child: const Text(
              'Buat akun CAIvideo',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip', style: TextStyle(color: Colors.pink)),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.pink,
      ),
      done: const Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.pink)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(20),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.pinkAccent,
        size: Size(10.0, 10.0),
        color: Colors.pink,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String? assets;
  const ImageCard({this.assets});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80),
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Image.asset(
        'assets/$assets',
        fit: BoxFit.fill,
      ),
    );
  }
}
