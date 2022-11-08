import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_screen_goviral_workspace/presentation/screens/home_screen.dart';
import 'package:task_screen_goviral_workspace/shared/constants/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(480, 960),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Plant App',
        theme: ThemeData(
          primaryColor: ColorsApp.kPeimaryColor,
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: ColorsApp.kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            backgroundColor: ColorsApp.kPeimaryColor,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorsApp.kPeimaryColor,
              statusBarIconBrightness: Brightness.light,
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
