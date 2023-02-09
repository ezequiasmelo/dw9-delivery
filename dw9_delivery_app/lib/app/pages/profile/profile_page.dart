import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_appbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> verifyIsAuthenticate() async {
      var navigator = Navigator.of(context);
      final sp = await SharedPreferences.getInstance();
      // await sp.remove('accessToken');
      // await sp.remove('refreshToken');
      await sp.clear();
      navigator.pushNamed('/home');
    }

    return Scaffold(
      appBar: DeliveryAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
                ),
                onPressed: () {
                  verifyIsAuthenticate();
                },
                child: const Text('Sair'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
