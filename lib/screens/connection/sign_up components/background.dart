import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:test_app/constante.dart';
import 'package:test_app/screens/connection/sign_up%20components/rounded_button.dart';
import 'package:test_app/screens/connection/sign_up%20components/text_field_container.dart';
import 'package:test_app/screens/home/homeScreen.dart';
import 'already_have_an_account_check.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  //bool isLoading = false;

  void handleClick() {
      Fluttertoast.showToast(
          msg: "Connexion réussie !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding / 20,
                ),
                height: size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/free.jpg",
                          width: 200, fit: BoxFit.fill),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              const Text(
                "S'inscrire",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Créer un compte",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Padding(
                padding: const EdgeInsets.only(right: 245),
                child: Text(
                  "Mobile No",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kTextColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 3,
                ),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IntlPhoneField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'CMR',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.only(right: 245),
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kTextColor,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.grey.shade500,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: kTextColor,
                    ),
                    hintText: "Enter your password",
                    border: InputBorder.none,
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  "Confirm password",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kTextColor,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.grey.shade500,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: kTextColor,
                    ),
                    hintText: "Confirm your password",
                    border: InputBorder.none,
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              RoundedButton(
                  text: "S'inscrire",
                  press: () async {
                    handleClick();

                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: _LoaderWidget(),
                          );
                        },
                    );

                  Future.delayed(const Duration(seconds: 2), () {
                    Navigator.pop(context);

                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen())
                    );
                  });
              }),

              SizedBox(height: size.height * 0.02),
              AccountCheck(
                  login: false,
                  press: () {
                    // Navigator.push(
                    //   context,
                    //   PageRouteBuilder(
                    //     pageBuilder: (_, __, ___) => const LogInScreen(),
                    //   ),
                    // );
                  }),
            ],
          ),
        ),
      ],
    );
  }

  _LoaderWidget() {
     const Center(
      child: CircularProgressIndicator(
        strokeWidth: 4.0,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  }
}
