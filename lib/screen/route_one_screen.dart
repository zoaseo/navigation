import 'package:flutter/material.dart';
import 'package:navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({
    Key? key,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Route One'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '$number',
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                print(Navigator.of(context).canPop());
              },
              child: Text(
                'Can Pop',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text(
                'Maybe Pop',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(456);
              },
              child: Text(
                'Pop',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => RouteTwoScreen(),
                    settings: RouteSettings(
                      arguments: 789,
                    ),
                  ),
                );
              },
              child: Text(
                'Push',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
