import 'package:flutter_app/models/model.dart';

class PickerScreenModel {
  final String title;
  final PickerItemModel selected;
  final List<PickerItemModel> list;

  PickerScreenModel({
    required this.title,
    required this.selected,
    required this.list,
  });
}
