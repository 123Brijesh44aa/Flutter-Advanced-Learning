import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlubOnOff extends StatefulWidget {
  const BlubOnOff({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BlubOnOff();
  }
}

class _BlubOnOff extends State<BlubOnOff> {
  bool _lightIsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurpleAccent,
        ),
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.lightbulb,
                shadows: [
                  BoxShadow(
                      color: Colors.yellow.shade700.withOpacity(1),
                      spreadRadius: _lightIsOn ? 60 : 0,
                      blurRadius: _lightIsOn ? 100 : 0,
                      offset: _lightIsOn ? const Offset(0, -10) : const Offset(0, -4)
                  )
                ],
                color: _lightIsOn ? Colors.yellow.shade700 : Colors.white,
                size: 230,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _lightIsOn = !_lightIsOn;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: _lightIsOn ? Colors.redAccent : Colors.red,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 1)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  child: Text(
                    _lightIsOn ? "Turn Light Off" : "Turn Light On",
                    style: TextStyle(
                        color:
                            _lightIsOn ? Colors.yellow : CupertinoColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
