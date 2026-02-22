import 'package:flutter/material.dart';
import 'package:specialty_coffee_tracker/injection_container.dart' as di;

void main() async {
  // Bắt buộc phải có dòng này khi hàm main là async (để tương tác với native code như path_provider)
  WidgetsFlutterBinding.ensureInitialized();

  // Chờ "tổng đài" GetIt và Isar Database khởi tạo xong xuôi
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Specialty Coffee Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Specialty Coffee Tracker - Khởi tạo thành công!'),
        ),
      ),
    );
  }
}
