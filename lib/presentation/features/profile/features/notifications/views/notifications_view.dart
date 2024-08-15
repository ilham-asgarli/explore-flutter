import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../components/appbar/my_sliver_app_bar.dart';
import '../../../../../utils/constants/enums/app_enum.dart';
import '../../../../../utils/extensions/context_extension.dart';
import '../../../../../utils/extensions/num_extension.dart';
import '../../../../../utils/extensions/theme_extension.dart';
import '../components/my_notification_switch_tile.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(
            appBarLeading: AppBarLeading.back,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: context.paddingMedium,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(context),
                  30.verticalSpace,
                  Expanded(
                    child: buildForm(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      decoration: BoxDecoration(
        color: context.theme.customColors.fourth,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        context.l10n.notificationSettings,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  Widget buildForm(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MyNotificationSwitchTile(
          text: "Son dakika",
        ),
        10.verticalSpace,
        MyNotificationSwitchTile(
          text: "Takip Ettiklerim",
        ),
        10.verticalSpace,
        MyNotificationSwitchTile(
          text: "Hava Durumu",
        ),
        10.verticalSpace,
        MyNotificationSwitchTile(
          text: "Döviz Kurları",
        ),
      ],
    );
  }
}
