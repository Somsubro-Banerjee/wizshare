
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wizshare/Signup.dart';
import 'package:wizshare/home.dart';

bool isActive = false;
String emailid;
String password;

final emailController = TextEditingController();
final passwordController = TextEditingController();

class LoginDeesign extends StatefulWidget {
  @override
  _LoginDeesignState createState() => _LoginDeesignState();
}

class _LoginDeesignState extends State<LoginDeesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/uLady.jpg"),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.grey.shade900, BlendMode.hardLight),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 50, top: 140),
                  child: LogoText()),
              Container(
                  margin: EdgeInsets.only(left: 50, top: 40),
                  child: LoginText()),
              Container(
                  margin: EdgeInsets.only(top: 50, left: 50),
                  child: ColoredDivider()),
              Container(
                child: EmailField(),
              ),
              Container(
                child: PasswordField(),
              ),
              Container(
                margin: EdgeInsets.only(left: 235, top: 25),
                child: ForgotPass(),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: LoginButton(),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 20),
              //   child: SocialIcons(),
              // ),
              Container(
                margin: EdgeInsets.only(left: 50, top: 1),
                child: Row(
                  children: [
                    SignUpButton(),
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

class LogoText extends StatelessWidget {
  const LogoText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 5,
            width: 40,
            color: Colors.greenAccent,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Wiz Share",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          // SizedBox(
          //   width: 10,
          // ),
          // Container(
          //   height: 5,
          //   width: 40,
          //   color: Colors.greenAccent,
          // ),
        ],
      ),
    );
  }
}

class LoginText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 60,
        ),
      ),
    );
  }
}

class ColoredDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 5,
      color: Colors.white,
    );
  }
}

class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.only(left: 50, right: 50),
        child: TextFormField(
          autofocus: false,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white, fontSize: 20),
          cursorColor: Colors.greenAccent,
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ),
              filled: false,
              hintText: "Email-ID",
              hintStyle: TextStyle(fontSize: 15),
              border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 3.0)),
              disabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 3.0)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 3.0)),
              focusColor: Colors.greenAccent,
              fillColor: Colors.greenAccent,
              hoverColor: Colors.greenAccent),
        ));
  }
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isActivated = false;
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.only(left: 50, right: 50),
        child: TextFormField(
          focusNode: focusNode,
          controller: passwordController,
          onChanged: (pass) {
            password = pass;
          },
          obscureText: isActivated == true ? false : true,
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(color: Colors.white, fontSize: 20),
          cursorColor: Colors.greenAccent,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color:
                      isActivated == true ? Colors.greenAccent : Colors.white,
                ),
                onPressed: () {
                  isActivated = !isActivated;
                  focusNode.unfocus();
                  // focusNode.canRequestFocus = false;
                  // focusNode.canRequestFocus = true;
                },
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Icon(
                  Icons.enhanced_encryption_rounded,
                  color: Colors.white,
                ),
              ),
              filled: false,
              hintText: "Password",
              hintStyle: TextStyle(fontSize: 15),
              border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 3.0)),
              disabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 3.0)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 3.0)),
              focusColor: Colors.greenAccent,
              fillColor: Colors.greenAccent,
              hoverColor: Colors.greenAccent),
        ));
  }
}

class ForgotPass extends StatelessWidget {
  const ForgotPass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: () {
            debugPrint("Forgot Password");
          },
          child: Text(
            "Forgot Passowrd",
            style: TextStyle(color: Colors.white, fontSize: 15),
          )),
    );
  }
}

class LoginButton extends StatefulWidget {
  LoginButton({Key key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 47,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.greenAccent,
          )),
      child: Container(
        padding: EdgeInsets.all(4),
        child: TextButton(
          onPressed: () {
            debugPrint("Login Pressed");
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class SignUpButton extends StatefulWidget {
  @override
  _SignUpButtonState createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: () {
            debugPrint("Sign Up ");
            setState(() {
              isActive = true;
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SignUpDesign()));
            });
            print(isActive);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(color: Colors.greenAccent, fontSize: 15),
          )),
    );
  }
}

class SocialIcons extends StatefulWidget {
  @override
  _SocialIconsState createState() => _SocialIconsState();
}

class _SocialIconsState extends State<SocialIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.greenAccent,
              ),
              onPressed: () {
                debugPrint("Google Icon pressed");
              }),
          IconButton(
              icon: Icon(
                Icons.pause,
                color: Colors.greenAccent,
              ),
              onPressed: () {
                debugPrint("Github Icon pressed");
              }),
          IconButton(
              icon: Icon(
                Icons.reset_tv,
                color: Colors.greenAccent,
              ),
              onPressed: () {
                debugPrint("Facebook Icon pressed");
              }),
        ],
      ),
    );
  }
}
