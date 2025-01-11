import 'package:flutter/material.dart';

class MainForm extends StatelessWidget {
  const MainForm({super.key});

  @override
  Widget build(BuildContext context) {
    final lebarLayar = MediaQuery.of(context).size.width;
    final tinggiLayar = MediaQuery.of(context).size.height;
    final paddingLayar = lebarLayar < 900
        ? EdgeInsets.symmetric(horizontal: 8 / 100 * lebarLayar)
        : EdgeInsets.symmetric(horizontal: 35 / 100 * lebarLayar);
    return Scaffold(
      //Container Utama
      body: Container(
        child: Stack(
          children: [
            //Container BG Header
            Container(
              padding: paddingLayar,
              color: Theme.of(context).primaryColor,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Stack(
                  children: [
                    //Text Header
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kenalan dulu yuk!',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 26,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Katanya sih tak kenal maka tak sayang.\nSo, isi datanya dengan benar ya agar\nhasilnya nanti lebih akurat ;-).',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    //gambar Header
                    Container(
                      height: 300,
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/illustrasi/mainForm_Kenalan.png',
                        fit: BoxFit.fitWidth,
                        scale: 0.1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Container Main Content
            Container(
              margin: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
