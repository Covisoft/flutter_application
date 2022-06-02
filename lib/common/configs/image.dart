class Images {
  static const String logo = "assets/images/logo.png";
  static const String icon = "assets/images/icon.png";
  static const String defaultImage = "assets/images/defaultImage.png";
  static const String defaultThumb = "assets/images/defaultImage.png";

  ///Singleton factory
  static final Images _instance = Images._internal();

  factory Images() {
    return _instance;
  }

  Images._internal();
}
