import 'package:bbs_app/styles/common_colors.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool isChecked = false;
  bool isHidden = true;

  final passwordController = TextEditingController();
  final userIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //images row
                logoAndHeadingSection(),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/splash1.png',
                  height: 140,
                  width: 140,
                ),
                const SizedBox(
                  width: 350,
                  child: Text(
                    'Manage, process, monitor and analyze data through dashboards and generate reports instantly.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),


                const Text(
                  "User Login",

                  style: TextStyle(

                      color: Color.fromRGBO(73, 73, 73, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,),
                ),
                buildUserFormField(),
                const SizedBox(
                  height: 15,
                ),
                buildPasswordFormField(), //password
                buildRememberMe(),
                //Log in
                buildLogin(),
                buildForgetPassword(),
                //bac image
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildUserFormField() {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'User ID',
            )),
        SizedBox(
          height: 60,
          child: TextFormField(
            controller: userIdController,
            decoration: InputDecoration(
                hintText: 'Enter 7-8 digits ID',
                hintStyle: TextStyle(color: Color.fromRGBO(153, 153, 153, 1)),
                prefixIcon: Image.asset('assets/images/user.png'),
                border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(4))),
          ),
        ),
      ],
    );
  }

  Widget buildPasswordFormField() {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
            )),
        SizedBox(
          height: 60,
          child: TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
                hintText: 'Enter Password',
                hintStyle: TextStyle(color: Color.fromRGBO(153, 153, 153, 1)),
                prefixIcon: Image.asset('assets/images/lock.png'),
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                  child: Image.asset(
                    'assets/images/show.png',
                    color: isHidden ? null : statusBarColor,
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(4))),
            obscureText: isHidden,
          ),
        ),
      ],
    );
  }



  Row buildRememberMe() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            fillColor: MaterialStateProperty.all(statusBarColor),
            value: isChecked,
            onChanged: (newValue) {
              setState(() {
                isChecked = newValue!;
              });
            }),
        Text(
          'Remember Me',
          style: TextStyle(color: Color.fromRGBO(107, 105, 105, 1)),
        )
      ],
    );
  }

  Align buildForgetPassword() => const Align(
      alignment: Alignment.topRight,
      child: Text(
        'Forget Password?',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ));

  Widget buildLogin() {
    return InkWell(
      onTap: (){

        if('123456'==passwordController.text.toString()&&'noman'==userIdController.text.toString()){

          print('done');
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));

        }else{print('nonon');}

      },
      child: Container(
        decoration: BoxDecoration(
            color: statusBarColor, borderRadius: BorderRadius.circular(5)),
        width: double.infinity,
        height: 60,
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget logoAndHeadingSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/government.png',
              width: 110,
              height: 110,
            ),
            SizedBox(
              width: 50,
            ),
            Image.asset(
              'assets/images/bbs_logo.png',
              width: 110,
              height: 110,
            ),
          ],
        ),
        Text(
          'Bangladesh Bureau of Statistics',
          style: TextStyle(
              color: statusBarColor, fontWeight: FontWeight.w700, fontSize: 18),
        ),
        Text(
          'Socio-Economic and Demographic Survey 2022',
          style: TextStyle(
              color: Color.fromRGBO(196, 22, 28, 1),
              fontWeight: FontWeight.w700,
              fontSize: 12),
        ),
      ],
    );
  }
}
