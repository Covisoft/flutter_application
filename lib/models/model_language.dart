class LanguageModel {
  final String languageCode;
  final List<LanguageItem> languageData;

  LanguageModel({
    required this.languageCode,
    required this.languageData,
  });

  factory LanguageModel.fromJson(json) {
    final data = json['languageData'] as Map<String, dynamic>;
    final List<LanguageItem> list = data.entries
        .map((e) => LanguageItem(key: e.key, value: e.value))
        .toList();

    return LanguageModel(
        languageCode: json['languageCode'], languageData: list);
  }

  toJsonLanguageData() {
    final map =
        Map.fromEntries(languageData.map((e) => MapEntry(e.key, e.value)));
    return map;
  }
}

class LanguageItem {
  final String key;
  final String value;
  LanguageItem({required this.key, required this.value});
}
