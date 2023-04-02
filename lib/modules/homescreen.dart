import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ramadan_kareem/layout/homelayoutscreen.dart';
import 'package:ramadan_kareem/modules/picturepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController editingController;
  @override
  Widget build(BuildContext context) {
    List<String> images = ['assets/1.jpg', 'assets/2.jpg', 'assets/3.jpg'];
    editingController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Ramadan Kreem',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: editingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                keyboardAppearance: Brightness.light,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your name';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'enter your name',
                    hintStyle: const TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    fillColor: Colors.white,
                    labelText: 'Your Name',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(
                        color: HexColor('#EED581'),
                        width: 1,
                      ),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(
                        width: 1,
                        color: HexColor('#EED581'),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    filled: true,
                    contentPadding:
                        const EdgeInsetsDirectional.only(start: 20)),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeLayoutScreen(
                          name: editingController.text,
                        ),
                      ),
                    );
                  }
                },
                child: Container(
                  width: 168,
                  height: 33,
                  decoration: BoxDecoration(
                      color: HexColor('#EED581'),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'Show',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 11,
                      crossAxisSpacing: 13,
                      mainAxisExtent: 186),
                  itemBuilder: (BuildContext context, int index) =>
                      page(images[index], () async {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PicturePage(
                            name: editingController.text,
                            imgPath: images[index],
                          ),
                        ),
                      );
                    }
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget page(String? image, Function()? onTap) => InkWell(
        onTap: onTap,
        child: Container(
          height: 90,
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            image!,
            fit: BoxFit.cover,
          ),
        ),
      );
}
