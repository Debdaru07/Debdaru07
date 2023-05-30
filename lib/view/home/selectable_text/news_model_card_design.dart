import 'package:flutter/material.dart';

import '../../common_functions_and_constants/common_functions.dart';
import 'news_model.dart';

class NewsCardDesign extends StatefulWidget {
  final NewsModel? info;
  const NewsCardDesign({super.key, required this.info});

  @override
  State<NewsCardDesign> createState() => _NewsCardDesignState();
}

class _NewsCardDesignState extends State<NewsCardDesign> {
  @override
  Widget build(BuildContext context) {
    return newsCardDesign(
      context,type: "${widget.info?.title}",
      line1: "${widget.info?.line1}",
      line2:  "${widget.info?.line2}",
      line3:  widget.info?.line3,
    );
  }
}