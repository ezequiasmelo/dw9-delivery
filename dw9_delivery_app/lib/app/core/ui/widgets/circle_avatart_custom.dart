import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CircleAvatarCustom extends StatefulWidget {
  const CircleAvatarCustom({
    Key? key,
  }) : super(key: key);

  @override
  State<CircleAvatarCustom> createState() => _CircleAvatarCustomState();
}

class _CircleAvatarCustomState extends State<CircleAvatarCustom> {
  bool isAuthenticate = true;

  @override
  void initState() {
    super.initState();
    verifyIsAuthenticate();
  }

  Future<void> verifyIsAuthenticate() async {
    final sp = await SharedPreferences.getInstance();
    if (!sp.containsKey('accessToken')) {
      setState(() {
        isAuthenticate = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isAuthenticate,
      child: IconButton(
        iconSize: 35,
        onPressed: () {
          Navigator.of(context).pushNamed('/profile');
        },
        icon: const Icon(
          Icons.account_circle,
          color: Colors.grey,
        ),
      ),
    );
  }
}
