import 'dart:developer';

import 'package:flutter/material.dart';

import 'common_constants.dart';


// Show _ Success _ Bar 
showSuccessBar(BuildContext context,{String successMessage = "Login Successful !"}){
  final snackBar =SnackBar(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    content: Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.check_circle,color: Colors.grey,),
                          const SizedBox(width: 20,),
                          Text('$successMessage'),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    duration: Duration(seconds: 2),
                  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

// Show _ Error _ Bar 
showErrorBar(BuildContext context,{String errorMessage = "Please Enter Phone Number !"}){
  final snackBar = SnackBar(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    content: Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.info_outline,color: Colors.grey,),
                          const SizedBox(width: 20,),
                          Text('$errorMessage'),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    duration: Duration(seconds: 2),
                  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Widget cardDesign({Widget? child,double radius = 3.0,Color cardCol =const Color.fromARGB(255, 225, 215, 215)}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
    child: Card(
      color: cardCol,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: 4.0,
      child: child,
    ),
  );
}

// Card Design News Header 
newsCardDesign(BuildContext context,{String? type = NewsTypeList.newsHeader,String? line1 = '',String line2 = '',String? line3 = '',bool isClick=false}){
  const paddingStyle = EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0);
  
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
      child: Card(
        color: const Color.fromARGB(255, 225, 215, 215),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                type!,
                style: const TextStyle(fontFamily: 'rebot', fontWeight: FontWeight.bold, fontSize: 18,color:Colors.black),
                maxLines: 1,
              ),
              // Line 1
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 7,
                    height: 15,
                    padding: const EdgeInsets.only(right: 14),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      line1!,
                      style: const TextStyle(fontFamily: 'rebot', fontWeight: FontWeight.bold, fontSize: 16,color:Color.fromARGB(255, 108, 106, 106)),
                    ),
                  ),
                ],
              ),
              // Line 2
              Text(
                line2,
                style: const TextStyle(fontFamily: 'rebot', fontWeight: FontWeight.bold, fontSize: 16,color:Color.fromARGB(255, 108, 106, 106)),
              ),
              // Line 3
              (line3!=null)?
               Text(
                line3,
                 style: const TextStyle(fontFamily: 'rebot', fontWeight: FontWeight.bold, fontSize: 16,color:Color.fromARGB(255, 108, 106, 106)),
               )
              : const SizedBox.shrink(),
            ]),
          ),
        ),
      ),
    );
}