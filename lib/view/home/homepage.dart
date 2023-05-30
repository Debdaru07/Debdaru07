import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    cardFoodStart(BuildContext context){
    return  Card(
    elevation: 5,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
         Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Healthy",
            style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.065),
                      textAlign: TextAlign.center
          ),
        ),
        Container(
          height: 80,
          child: Image.asset("assets/main_card_healthy_food.jpg",fit: BoxFit.cover,)),
      ],
    ),
  );
  }
    TextEditingController searchCtlr = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             Icon(Icons.location_on,color: Colors.red,),
             SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Text("Sector 48",style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      textAlign: TextAlign.center,),
               Text("Gurugram",style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                      textAlign: TextAlign.center,),
            ],)
            ],),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right :8.0),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.exit_to_app,color: Colors.black,)),
          )
      ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        child: Row(
                          children: [
                            Expanded(
                              child: 
                              TextFormField(
                                controller: searchCtlr,
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
                                  hintText: "Restaurant name or dish..",
                                  hintStyle:  TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Icon(Icons.search, color: Colors.red),
                                  ),
                                ),
                                onFieldSubmitted: (valu) {
                                  
                                },
                              ),
                            ),
                            Row(
                              children: [
                                Container(height: 20,color: Colors.grey,width: 1,),
                                const Icon(Icons.mic,color: Colors.red,)
                              ],
                            ),
                          ],
                        ),
                    ),
            ),
            cardFoodStart(context)
          ],
        ),
      ));
  }
}