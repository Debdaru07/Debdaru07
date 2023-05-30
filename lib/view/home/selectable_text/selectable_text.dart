import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/home/selectable_text/news_model.dart';

import 'news_model_card_design.dart';

class SelectableTextLearning extends StatefulWidget {
  const SelectableTextLearning({super.key});

  @override
  State<SelectableTextLearning> createState() => _SelectableTextLearningState();
}

class _SelectableTextLearningState extends State<SelectableTextLearning> {
  List<NewsModel> textList = [];


  @override
  void initState() {
    setState(() {
      textList = [
          NewsModel(title: "COVID-19 Pandemic Updates",line1: "Vaccination efforts continue worldwide, with several countries expanding their eligibility criteria.",line2: "Some countries are experiencing new waves of infections, while others are successfully controlling the spread through various measures.",line3: "Emerging COVID-19 variants, such as the Delta variant, are being closely monitored by health authorities."),
          NewsModel(title: "International Relations",line1: "Tensions between Israel and Palestine escalated, resulting in intense clashes and airstrikes in the Gaza Strip.",line2: "The United States and other world powers are engaged in diplomatic efforts to negotiate a ceasefire and promote peace in the region.",line3: "Ongoing discussions and negotiations surrounding global climate change and efforts to reduce greenhouse gas emissions are taking place."),
          NewsModel(title: "Political Developments",line1: "Elections and political transitions have occurred in various countries, leading to new leaders and potential policy changes.",line2: "Protests and demonstrations demanding political reforms and social justice have taken place in different parts of the world."),
          NewsModel(title: "Economic News",line1: "Global economies are recovering from the impact of the COVID-19 pandemic, with some countries experiencing growth while others face challenges.",line2: "Inflation concerns have risen in several nations, leading to debates and policy discussions regarding interest rates and monetary measures."),
          NewsModel(title: "Natural Disasters and Environmental Issues",line1: "Several regions have been affected by natural disasters, including severe storms, hurricanes, wildfires, and floods, leading to loss of life and significant damage.",line2: "Discussions on environmental conservation, renewable energy, and sustainability are ongoing, with a focus on mitigating climate change."),
          NewsModel(title: "Sports and Cultural Events",line1: "Various sporting events, such as the Olympics, major tournaments, and championships, have taken place or are scheduled to occur.",line2: "Cultural festivals, art exhibitions, and entertainment events are being organized both virtually and in-person, following local guidelines and restrictions."),
        ];
    });
    super.initState();
  }

  showCardNewsList(){
    return ListView.builder(
            shrinkWrap: true,
            itemCount: textList.length, 
            itemBuilder: (BuildContext context, int index) {
              return NewsCardDesign(
                info: textList[index],
              );
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children:   [
            Text("Selectable Text Learning  ",style: TextStyle(fontSize: 21,fontFamily: "Rebot",fontWeight: FontWeight.w500),),
            Icon(Icons.feed)
          ],
        ),
      ),
      body:  showCardNewsList(),
    );
  }
}