import 'package:flutter/material.dart';
import 'package:untitled1/constants/globals.dart';
import 'package:untitled1/games/gift_grab_game.dart';


class GameOverMenu extends StatelessWidget {
  static const String ID = 'GameOverMenu';
  final GiftGrabGame gameRef;
  const GameOverMenu({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/${Globals.backgroundSprite}"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  'Game Over',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  'Score: ${gameRef.score}',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                height: 100,
                child: ElevatedButton(
                  onPressed: (){
                    gameRef.overlays.remove(GameOverMenu.ID);
                    gameRef.reset();
                    gameRef.resumeEngine();
                  },
                  child: const Text(
                    'Play Again?',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
