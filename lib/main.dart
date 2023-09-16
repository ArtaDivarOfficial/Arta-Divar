import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:divar/packages/adaptive_theme/dark_theme/dark_theme.dart';
import 'package:divar/packages/adaptive_theme/light_theme/light_theme.dart';
import 'package:divar/repositories/chats_repositories/chat_messages_repository/cubit/chat_message_cubit.dart';
import 'package:divar/repositories/chats_repositories/chat_repository/cubit/chat_cubit.dart';
import 'package:divar/repositories/customers_repositories/cubit/customer_cubit.dart';
import 'package:divar/repositories/items_respositories/bags_respository/cubit/bag_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:divar/constants/colors.dart';
import 'package:divar/packages/connectivity_plus/cubit/connectivity_plus_cubit.dart';
import 'package:divar/repositories/otp_code_repository/cubit/otp_code_cubit.dart';
import 'package:divar/translations/locale_keys.g.dart';
import 'package:divar/utilities/app_router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: kLightBackgroundColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: kLightBackgroundColor,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: kTransparentColor,
    ),
  );
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('fa'), Locale('ps')],
      path: 'assets/translations',
      fallbackLocale: const Locale('fa'),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: ((context, orientation) {
              return MyApp(
                appRouter: AppRouter(),
              );
            }),
          );
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ConnectivityPlusCubit(),
        ),
        BlocProvider(
          create: (context) => CustomerCubit(),
        ),
        BlocProvider(
          create: (context) => OtpCodeCubit(),
        ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
        BlocProvider(
          create: (context) => ChatMessageCubit(),
        ),
        BlocProvider(
          create: (context) => BagCubit(),
        ),
      ],
      child: AdaptiveTheme(
        dark: darkTheme(context: context),
        light: lightTheme(context: context),
        initial: AdaptiveThemeMode.system,
        builder: (lightTheme, darkTheme) {
          return MaterialApp(
            onGenerateTitle: (context) => LocaleKeys.app_name.tr(),
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            theme: lightTheme,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            onGenerateRoute: appRouter.onGenerateRoute,
          );
        },
      ),
    );
  }
}
