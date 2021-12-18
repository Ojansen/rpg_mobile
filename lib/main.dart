import 'package:arpg/models/player_model.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'screens/start_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  await Flame.device.setPortrait();
  await Flame.device.fullScreen();
  runApp(
    FutureProvider<PlayerModel>(
      create: (BuildContext context) => getPlayerData(),
      initialData: PlayerModel.fromMap(PlayerModel.defaultPlayer),
      builder: (context, child) {
        return ChangeNotifierProvider<PlayerModel>.value(
            value: Provider.of<PlayerModel>(context),
            child: child
        );
      },
      child: MaterialApp(
        theme: ThemeData(
            textTheme: const TextTheme(
              bodyText2: TextStyle(fontSize: 24, color: Colors.white),
            ),
            fontFamily: 'MajorMono'),
        home: const StartScreen(),
      ),
    ),
  );
}

Future<void> initHive() async {
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);

  Hive.registerAdapter(PlayerModelAdapter());
}

Future<PlayerModel> getPlayerData() async {
  await initHive();

  final box = await Hive.openBox<PlayerModel>('PlayerModelBox');
  final playerModel = box.get('PlayerData');
  if (playerModel == null) {
    box.put('PlayerData', PlayerModel.fromMap(PlayerModel.defaultPlayer));
  }

  return box.get('PlayerData')!;
}