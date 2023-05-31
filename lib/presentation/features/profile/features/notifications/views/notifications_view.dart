import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/utils/logic/state/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../../../components/my_sliver_app_bar.dart';
import '../components/my_notification_switch_tile.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

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
                  context.widget.verticalSpace(30),
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
        color: context.watch<ThemeBloc>().state.appColors.fourth,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        LocaleKeys.notificationSettings.tr(),
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
        context.widget.verticalSpace(10),
        MyNotificationSwitchTile(
          text: "Takip Ettiklerim",
        ),
        context.widget.verticalSpace(10),
        MyNotificationSwitchTile(
          text: "Hava Durumu",
        ),
        context.widget.verticalSpace(10),
        MyNotificationSwitchTile(
          text: "Döviz Kurları",
        ),
      ],
    );
  }
}
