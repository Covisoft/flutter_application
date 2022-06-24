class ConfigImages {
  static const String logo = "assets/images/logo.png";
  static const String icon = "assets/images/icon.png";
  static const String defaultImage = "assets/images/defaultImage.png";
  static const String defaultThumb = "assets/images/defaultImage.png";

  ///Singleton factory
  static final ConfigImages _instance = ConfigImages._internal();

  factory ConfigImages() {
    return _instance;
  }

  ConfigImages._internal();
}
