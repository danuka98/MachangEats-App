import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uee/screen/categoryUI.dart';
import 'package:uee/screen/s2/forgotPass.dart';
import 'package:uee/screen/s2/signUp.dart';
import 'package:uee/styles/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double widthScale, heightScale;

  late String email, password;
  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              'asset/images/logo.png',
              width: 170,
              height: 170,
            ))
      ],
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: widthScale * 10,
        right: widthScale * 10,
        top: heightScale * 10,
      ),
      child: TextFormField(
        autofocus: false,
        validator: (value) =>
            value!.isEmpty ? "Please Enter Email Address" : null,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email,
            color: kOrange,
          ),
          hintText: 'Email',
          hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: widthScale * 10,
        right: widthScale * 10,
        top: heightScale * 10,
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: kOrange,
          ),
          hintText: 'Password',
          hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Padding(
      padding: EdgeInsets.only(
        top: heightScale * 10,
        left: widthScale * 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPass()),
              );
            },
            child: Text(
              "Forgot Password ?",
              style: TextStyle(
                fontSize: 15,
                color: kBlue.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20, top: 25),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kOrange),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryList()),
              );
            },
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildOrRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Text(
            '- OR -',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSocialBtnRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('asset/images/google.png'),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kDarkGrey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
              ),
            ],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              _buildEmailRow(),
              _buildPasswordRow(),
              _buildForgetPasswordButton(),
              _buildLoginButton(),
              _buildOrRow(),
              _buildSocialBtnRow(),
              _buildSignUpBtn(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Dont have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 50,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Sign Up here',
                  style: TextStyle(
                    color: kBlue,
                    decoration: TextDecoration.underline,
                    fontSize: MediaQuery.of(context).size.height / 50,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 207;
    heightScale = MediaQuery.of(context).size.height / 448;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xfff2f3f7),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kDarkGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(70),
                  bottomRight: const Radius.circular(70),
                ),
              ),
              child: Column(
                children: [
                  _buildLogo(),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: heightScale * 60,
                  ),
                  child: _buildContainer(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
