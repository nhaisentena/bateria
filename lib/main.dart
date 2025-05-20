import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const platform = MethodChannel('com.example.battery_alert/battery');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Battery Alert App',
      home: Scaffold(
        appBar: AppBar(title: Text('Battery Monitor')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final url = Uri.parse('https://github.com/nhaisentena');
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              }
            },
            child: Text('Ver mi perfil de GitHub'),
          ),
        ),
      ),
    );
  }
}
