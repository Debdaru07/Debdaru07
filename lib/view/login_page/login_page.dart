import 'package:flutter/material.dart';

// import '../common/background.dart';
import '../common_functions_and_constants/common_functions.dart';
import '../home/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController phoneController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
               Container(
                 height: size.height * 0.5,
                 width: size.width * 1,
                 child: const Image(
                    fit: BoxFit.cover,
                    image:  AssetImage('assets/login_image.jpg'), 
                    ),
               ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child:  Text(
                      "India's #1 Food Delivery and Dining App",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.065),
                      textAlign: TextAlign.center,
                    ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(width: size.width * 0.25,color: Colors.grey, height: 0.75,),
                    Text(
                      "Login or Signup",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.03),
                      textAlign: TextAlign.left,
                    ),
                    Container(width: size.width * 0.25,color: Colors.grey, height: 0.75,),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.017),
              // Phone Number
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: phoneController,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.blue,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    iconColor: Colors.grey,
                    prefixIconColor: Colors.grey,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Enter Phone Number",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(Icons.phone_android, color: Colors.blue),
                    ),
                  ),
                  onFieldSubmitted: (valu) {
                    
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              // Continue  
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                child: InkWell(
                  onTap: (){
                    if(phoneController.text == ""){
                      showErrorBar(context,errorMessage: "Please Enter Phone Number !");
                    } else {
                      showSuccessBar(context,successMessage: "Login Successful !");
                      Navigator.push(context,  MaterialPageRoute(builder: (context) => const HomePage()),);
                    }
                  },
                  child: Text("Continue",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontFamily: 'Lato',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.05),)),
              ),
             SizedBox(height: size.height * 0.02,),
             Container(width: size.width * 0.8,color: Colors.grey, height: 0.75,),
             //  Forget Password
             Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, RoutesName.forget);
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontSize: size.width * 0.04,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ), 
             ],
          ),
        ),
      );
  }
}