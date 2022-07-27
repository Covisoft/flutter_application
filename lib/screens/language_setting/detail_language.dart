import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/common/widgets/widget.dart';
import 'package:flutter_app/models/model.dart';
import 'package:flutter_app/repository/repository.dart';

class DetailLanguageArguments {
  final Locale locale;
  DetailLanguageArguments(this.locale);
}

class DetailLanguage extends StatefulWidget {
  final Locale locale;
  const DetailLanguage({Key? key, required this.locale}) : super(key: key);

  @override
  State<DetailLanguage> createState() => _DetailLanguageState();
}

class _DetailLanguageState extends State<DetailLanguage> {
  final textLanguageController = TextEditingController();
  List<LanguageItem> totalListLanguages = [];
  List<LanguageItem> listLanguages = [];
  bool isLoading = false;
  @override
  void initState() {
    super.initState();

    loadDataLanguage();
  }

  loadDataLanguage() async {
    setState(() {
      isLoading = true;
    });
    final lang = await ApplicationRepository.getLanguages(widget.locale);
    setState(() {
      totalListLanguages = lang.languageData;
      listLanguages = totalListLanguages;
      isLoading = false;
    });
  }

  ///On filter language
  void onFilter(String text) {
    if (text.isEmpty) {
      setState(() {
        listLanguages = totalListLanguages;
      });
      return;
    }
    setState(() {
      listLanguages = totalListLanguages.where(((item) {
        return (item.key.toLowerCase().contains(text.toLowerCase())) ||
            (item.value.toLowerCase().contains(text.toLowerCase()));
      })).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConfigColor.primary,
        title: Text(
          UtilLanguage.getGlobalLanguageName(widget.locale.languageCode),
          style: ConfigText.headline5,
        ),
        actions: [_AddNewLangButton(langCode: widget.locale.languageCode)],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_2),
            child: AppTextInput(
              labelText: Translate.of(context).translate('language'),
              hintText: Translate.of(context).translate('search'),
              controller: textLanguageController,
              maxLines: 1,
              onChanged: onFilter,
            ),
          ),
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : Expanded(
                  child: AppSmartRefresh(
                    onRefresh: () {
                      loadDataLanguage();
                    },
                    child: ListView.builder(
                        itemCount: listLanguages.length,
                        itemBuilder: (context, index) {
                          return AppListTitle(
                            title: listLanguages[index].value,
                            subtitle: listLanguages[index].key,
                            trailing: Row(
                              children: [
                                _EditLangButton(
                                    langCode: widget.locale.languageCode,
                                    lang: listLanguages[index]),
                                _RemoveLangButton(
                                    langCode: widget.locale.languageCode,
                                    lang: listLanguages[index])
                              ],
                            ),
                          );
                        }),
                  ),
                ),
        ],
      ),
    );
  }
}

class _AddNewLangButton extends StatefulWidget {
  const _AddNewLangButton({Key? key, required this.langCode}) : super(key: key);
  final String langCode;
  @override
  State<_AddNewLangButton> createState() => _AddNewLangButtonState();
}

class _AddNewLangButtonState extends State<_AddNewLangButton> {
  @override
  Widget build(BuildContext context) {
    ///On Edit
    void onAddNew() async {
      final result = await showDialog<bool>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(Translate.of(context).translate('add_lang')),
            insetPadding:
                EdgeInsets.symmetric(horizontal: ConfigSize.SPACING_SIZE_1),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  AppTextInput(
                    key: const Key('lang_key_textField'),
                    keyboardType: TextInputType.phone,
                    labelText: Translate.of(context).translate('lang_key'),
                  ),
                  Padding(padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_2)),
                  AppTextInput(
                    key: const Key('lang_value_textField'),
                    keyboardType: TextInputType.phone,
                    labelText: Translate.of(context).translate('lang_value'),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              AppButton(
                text: Translate.of(context).translate('close'),
                textStyle:
                    ConfigText.button.copyWith(color: ConfigColor.buttonDark),
                onPressed: () {
                  Navigator.pop(context, false);
                },
                type: ButtonType.text,
              ),
              AppButton(
                text: Translate.of(context).translate('add_lang'),
                usedPrimaryColor: true,
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        },
      );
      if (result == true) {
        await ApplicationRepository.addNewLanguage(
          widget.langCode,
          "key",
          "value",
        );
      }
    }

    return IconButton(
        onPressed: () {
          onAddNew();
        },
        icon: const Icon(Icons.add));
  }
}

class _RemoveLangButton extends StatelessWidget {
  const _RemoveLangButton(
      {Key? key, required this.lang, required this.langCode})
      : super(key: key);
  final String langCode;
  final LanguageItem lang;
  @override
  Widget build(BuildContext context) {
    ///On Delete
    void onDelete() async {
      final result = await showDialog<bool>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(Translate.of(context).translate('del_lang')),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    Translate.of(context).translate('would_you_like_del_lang'),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              AppButton(
                text: Translate.of(context).translate('close'),
                textStyle:
                    ConfigText.button.copyWith(color: ConfigColor.buttonDark),
                onPressed: () {
                  Navigator.pop(context, false);
                },
                type: ButtonType.text,
              ),
              AppButton(
                text: Translate.of(context).translate('del_lang'),
                usedPrimaryColor: true,
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        },
      );
      if (result == true) {
        await ApplicationRepository.deleteLanguage(langCode, lang.key);
      }
    }

    return IconButton(
        onPressed: () {
          onDelete();
        },
        icon: const Icon(Icons.delete_outline));
  }
}

class _EditLangButton extends StatefulWidget {
  const _EditLangButton({Key? key, required this.lang, required this.langCode})
      : super(key: key);
  final LanguageItem lang;
  final String langCode;

  @override
  State<_EditLangButton> createState() => _EditLangButtonState();
}

class _EditLangButtonState extends State<_EditLangButton> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ///On Edit
    void onEdit() async {
      final result = await showDialog<bool>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(Translate.of(context).translate('edit_lang')),
            insetPadding:
                EdgeInsets.symmetric(horizontal: ConfigSize.SPACING_SIZE_1),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  AppTextInput(
                    key: const Key('lang_key_textField'),
                    keyboardType: TextInputType.phone,
                    labelText: Translate.of(context).translate('lang_key'),
                  ),
                  Padding(padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_2)),
                  AppTextInput(
                    key: const Key('lang_value_textField'),
                    keyboardType: TextInputType.phone,
                    labelText: Translate.of(context).translate('lang_value'),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              AppButton(
                text: Translate.of(context).translate('close'),
                textStyle:
                    ConfigText.button.copyWith(color: ConfigColor.buttonDark),
                onPressed: () {
                  Navigator.pop(context, false);
                },
                type: ButtonType.text,
              ),
              AppButton(
                text: Translate.of(context).translate('edit_lang'),
                usedPrimaryColor: true,
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        },
      );
      if (result == true) {
        await ApplicationRepository.deleteLanguage(
            widget.langCode, widget.lang.key);
      }
    }

    return IconButton(
        onPressed: () {
          onEdit();
        },
        icon: const Icon(Icons.edit_note_sharp));
  }
}
