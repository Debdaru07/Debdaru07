class NewsTypeList{
  static const String newsHeader = "header";
  static const String newsLines = "lines";
}

String  getRoute(String routeName)  {
  switch (routeName) {
    case NewsTypeList.newsHeader:
      return NewsTypeList.newsHeader;
    case NewsTypeList.newsLines:
      return NewsTypeList.newsLines;
    default: 
      return "default";
  }
}