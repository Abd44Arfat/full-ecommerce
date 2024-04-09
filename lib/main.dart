import 'dart:io';

import 'package:asroo_store/asroo_store_app.dart';
import 'package:asroo_store/core/app/bloc_observer.dart';
import 'package:asroo_store/core/app/env.variables.dart';
import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/core/service/push_notification/firebase_cloud_messaging.dart';
import 'package:asroo_store/core/service/shared_pref/shared_pref.dart';
import 'package:asroo_store/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await SharedPref().instantiatePreferences();

  await setupInjector();

  await FirebaseCloudMessaging().init();

  Bloc.observer = AppBlocObserver();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const AsrooStoreApp());
  });
}
