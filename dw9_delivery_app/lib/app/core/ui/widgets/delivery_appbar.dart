import 'package:dw9_delivery_app/app/core/ui/widgets/circle_avatart_custom.dart';
import 'package:flutter/material.dart';

class DeliveryAppbar extends AppBar {
  DeliveryAppbar({
    super.key,
    double elevation = 1,
  }) : super(
            elevation: elevation,
            title: Image.asset(
              'assets/images/logo.png',
              width: 80,
            ),
            actions: <Widget>[
              const CircleAvatarCustom(),
            ]);
}
