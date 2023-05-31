import 'package:explore/presentation/components/my_switch_tile.dart';

class MyNotificationSwitchTile extends MySwitchTile {
  const MyNotificationSwitchTile({
    super.key,
    super.text,
    super.fillColor,
    super.iconColor,
  }) : super(prefixIcon: "ic_notification");
}
