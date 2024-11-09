import 'package:anime_trix/app/core/constants/app_constants.dart';
import 'package:anime_trix/app/core/themes/app_theme.dart';
import 'package:anime_trix/app/core/utils/exports.dart';

Future<void> main() async { WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjector.init();
  await dotenv.load(fileName: "lib/.env");
 
  runApp(
    const MyApp().onTap(
      () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.appName,
      theme: AppTheme.lightTheme,
      initialRoute: AppPages.initialRoute,
      getPages: AppPages.routes,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(
              1.0,
            ),
          ),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }
}