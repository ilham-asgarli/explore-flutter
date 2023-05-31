import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/features/profile/view-models/profile_view_model.dart';
import 'package:explore/utils/logic/constants/locale/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/my_profile_picture_image.dart';
import '../../../components/my_sliver_app_bar.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);

  final ProfileViewModel _profileViewModel = ProfileViewModel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const MySliverAppBar(),
          SliverFillRemaining(
            child: Container(
              padding: context.paddingNormal,
              width: context.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildMainDetailsArea(context),
                  buildProfileGrid(context),
                  Expanded(
                    child: Center(
                      child: Text(
                        LocaleKeys.help.tr(),
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileGrid(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(
        top: context.normalValue,
      ),
      itemCount: _profileViewModel.profileItems.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return _profileViewModel.profileItems[index];
      },
    );
  }

  Widget buildMainDetailsArea(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.watch<ThemeBloc>().state.appColors.fourth,
      ),
      child: Column(
        children: [
          context.widget.dynamicVerticalSpace(context, 0.02),
          CircleAvatar(
            radius: context.width / 5,
            backgroundImage: MyProfilePictureImageProvider(),
          ),
          context.widget.dynamicVerticalSpace(context, 0.02),
          Text(
            "Merve Aktaş",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          context.widget.dynamicVerticalSpace(context, 0.02),
          Text(
            LocaleKeys.editProfile.tr(),
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          context.widget.dynamicVerticalSpace(context, 0.02),
        ],
      ),
    );
  }
}
