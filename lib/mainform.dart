import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MainForm extends StatelessWidget {
  const MainForm({super.key});

  @override
  Widget build(BuildContext context) {
    final lebarLayar = MediaQuery.of(context).size.width;
    final tinggiLayar = MediaQuery.of(context).size.height;
    final paddingLayar =
        lebarLayar < 900 ? 8 / 100 * lebarLayar : 35 / 100 * lebarLayar;

    final _kunciForm = GlobalKey<FormBuilderState>();
    return Scaffold(
      //Container Utama
      body: FormBuilder(
        key: _kunciForm,
        child: Container(
          child: Stack(
            children: [
              //Container BG Header
              Container(
                padding: EdgeInsets.symmetric(horizontal: paddingLayar),
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
                padding: EdgeInsets.symmetric(
                    horizontal: paddingLayar, vertical: 40),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    //namaUser
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: FormBuilderTextField(
                        name: 'namaUser',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Nama lengkap kamu',
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.2),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 30),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    //genderUser
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ToggleButtons(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(25),
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  color: Theme.of(context).colorScheme.primary,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Text('Perempuan')
                            ]),
                          ),
                          Icon(Icons.car_crash_sharp)
                        ],
                        isSelected: [true, false],
                        onPressed: (index) {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
