import 'package:coffee_card/style_body_text.dart';
import 'package:coffee_card/style_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strenght = 1;
  int sugars = 1;
  void increateStrenght() {
    setState(() {
      strenght = strenght < 5 ? strenght + 1 : 1;
    });
  }

  void increateSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyleBodyText('Strength: '),
            for (int i = 0; i < strenght; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyleButton(
                onPressed: increateStrenght,
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ))
          ],
        ),
        Row(
          children: [
            StyleBodyText('Sugars: '),
            if (sugars == 0) const StyleBodyText('No sugars...'),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyleButton(
                onPressed: increateSugar,
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ],
    );
  }
}
