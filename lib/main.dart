import 'package:bondapp/presentation/home_page.dart';
import 'package:bondapp/presentation/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:bondapp/core/utils/common.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://bqejkmexvdozgnewpdgx.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJxZWprbWV4dmRvemduZXdwZGd4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU4NDIyMDAsImV4cCI6MjAyMTQxODIwMH0.u7DeYBbiBO1leebahdSAQ1g8wca7qq7IDNuyhKPV3ZE',
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'bondapp',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.appWireframeScreen,
          routes: AppRoutes.routes,
          //home: const MyWidget(),
        );
      },
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  User? _user;
  @override
  void initState() {
    _getAuth();
    super.initState();
  }

  Future<void> _getAuth() async {
    setState(() {
      _user = client.auth.currentUser;
    });
    client.auth.onAuthStateChange.listen((event) {
      setState(() {
        _user = event.session?.user;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _user == null ? StartPage() : const HomePage(),
    );
  }
}
