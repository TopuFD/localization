import 'package:get/get_navigation/src/root/internacionalization.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'app_name': 'Localization',
          'welcome': 'Welcome to our app',
          'change_language': 'Change Language',
          'language':'Language',
          'subtitle':'English',
        },
        'bn_BD': {
          'app_name': 'স্থানীয়করণ',
          'welcome': 'আমাদের অ্যাপে স্বাগতম',
          'change_language': 'ভাষা পরিবর্তন করুন',
          'language' : 'ভাষা',
          'subtitle':'বাংলা',
        },
      };
}