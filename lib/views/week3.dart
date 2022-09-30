part of 'pages.dart';

class Week3Page extends StatefulWidget {
  @override
  _Week3PageState createState() => _Week3PageState();
}

class _Week3PageState extends State<Week3Page> {
  bool _isFavorited = false;
  String test = "adadadadadadad";

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WEEK 3"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.lightBlue, Colors.lightGreen])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            //flexible ke-1
            Flexible(
                flex: 3,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        'assets/images/tof.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: ElevatedButton.icon(
                        onPressed: _toggleFavorite,
                        icon: Icon(
                          Icons.favorite,
                          color: _isFavorited ? Colors.redAccent : Colors.grey,
                        ),
                        label: Text(''),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size.fromRadius(10),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                )),

            //Flexible ke-2
            Flexible(
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/shirli.jpg',
                        width: 95,
                        height: 95,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/samir.jpg',
                        width: 95,
                        height: 95,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/meryl.jpeg',
                        width: 95,
                        height: 95,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/frigg.jpg',
                        width: 95,
                        height: 95,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Spacer()
                  ],
                )),

            //Flexible ke-3
            Flexible(
              flex: 4,
              child: Container(
                child: Column(children: [
                  Container(
                      height: 50,
                      width: double.infinity,
                      child: Text(
                        "Tower of Fantasy",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      "     Tower of Fantasy is a 3D 'shared world' action role-playing game played with a 3rd-person view. The player controls a customizable character avatar who interacts with non-player characters and other entities and collects items as they travel around in the open virtual world. The player character can run, jump, sprint, climb, swim, and can equip various vehicles to move around in the world. The character's special movements with the exception of sprinting are limited by a regenerating stamina bar that slowly depletes as they continue in that movement mode. As the player character interacts with the world and the story, they earn experience points which increases their level and improves their combat stats." +
                          "\n\n     The player fights enemies with various equippable weapons through a hack-and-slash combat system where the player character swaps between weapons to access their unique attacks and abilities. Up to 3 weapons can be equipped and can be switched at any time. Each weapon has a basic and a charged attack, and jumping into the air enables stamina-consuming aerial attacks and a plunging attack form. Ranged weapons have a basic auto-target attack mode and an aimed mode. Weapons also have a unique cooldown-based skill. As the player attacks enemies the inactive weapons build up charge and when fully switching weapons unleashes a powerful discharge attack. To evade enemy attacks the player can dodge in any direction, but are limited by a dodge stamina meter. Timing a dodge just before an enemy attack lands activates 'phantasia' mode that freezes time and all enemies within a certain radius for a few seconds as well as fully charges the player's alternate weapons, giving the player a window of time to deal massive damage while their enemies are immobilised." +
                          "\n\n     There are different types of weapons and each weapon also has one of 3 roles (offense, defense, support) and various stats that affect how they work in the game. In addition to base damage values weapons have an elemental attack type (flame, ice, volt, physical), a shatter statistic that affect its effectiveness against shields, and a charge statistic that affects how quickly weapons charge up when using that weapon. An elemental attack can be activated by charging an attack and when used grant certain effects and debuffs against enemies. Equipping weapons with certain combinations of roles also creates Weapon Resonance that grants various buffs. Certain weapons, known as Simulacrum, possess an AI representation of their former wielders. In addition to having high upgrade potential Simulacrum can be activated to transform the player character into the Simulacrum character and gain access to their unique Traits. Upgrading these Simulacra also unlocks content that allows the player to learn about the characters within the Simulacra." +
                          "\n\n     As a 'shared world' RPG, players on the same server co-exist with and can encounter other players in the same instance of the game world. Tower of Fantasy supports co-op play where up to 4 players on the same server can team up to play together to explore the world, complete general or multiplayer-specific missions, or fight world bosses, and PvP where players can challenge each other to duels in open-world combat, or fight in an arena mode called Apex League to advance up a leaderboard to obtain special rewards.",
                      style: TextStyle(fontSize: 18),
                    ),
                  ))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
