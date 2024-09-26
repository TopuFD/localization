import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String language = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'app_name'.tr,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            // Language button with PopupMenuButton
            ListTile(
              leading: const Icon(Icons.language),
              title: Text(language == "bangla" ? 'language'.tr : 'language'.tr),
              subtitle:
                  Text(language == 'bangla' ? 'subtitle'.tr : 'subtitle'.tr),
              trailing: PopupMenuButton<String>(
                onSelected: (value) {
                  setState(() {
                    language = value;
                  });
                  if (value == 'English') {
                    Get.updateLocale(const Locale('en', 'US'));
                  } else if (value == 'Bangla') {
                    Get.updateLocale(const Locale('bn', 'BD'));
                  }
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem(
                    value: 'English',
                    child: Text('English'),
                  ),
                  const PopupMenuItem(
                    value: 'Bangla',
                    child: Text('বাংলা'),
                  ),
                ],
                icon: const Icon(Icons.arrow_drop_down),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('app_name'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('welcome'.tr), // Localized text
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Toggle between English and Bangla
                if (Get.locale == const Locale('en', 'US')) {
                  Get.updateLocale(const Locale('bn', 'BD'));
                } else {
                  Get.updateLocale(const Locale('en', 'US'));
                }
              },
              child: Text('change_language'.tr), // Localized button text
            ),
          ],
        ),
      ),
    );
  }
}
