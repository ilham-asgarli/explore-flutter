import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/appbar/my_sliver_app_bar.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../widgets/my_profile_picture_image.dart';
import '../my-app/state/cubit/theme/theme_cubit.dart';
import 'profile_view_model.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

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
                        context.l10n.help,
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
        color: context.theme.customColors.fourth,
      ),
      child: Column(
        children: [
          context.dynamicVerticalSpace(0.02),
          CircleAvatar(
            radius: context.width / 5,
            backgroundImage: MyProfilePictureImageProvider(),
          ),
          context.dynamicVerticalSpace(0.02),
          Text(
            "Merve Aktaş",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          context.dynamicVerticalSpace(0.02),
          Text(
            context.l10n.editProfile,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          context.dynamicVerticalSpace(0.02),
        ],
      ),
    );
  }
}
