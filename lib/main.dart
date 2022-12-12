import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/src/routing/route_pages.dart';
import 'package:get/get.dart';
import 'src/ui/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ByteData data = await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title                     : 'Food Vloger',
      debugShowCheckedModeBanner: true,
      home                      : const HomeScreen(),
      getPages                  : RoutePages.pages,
    );
  }
}