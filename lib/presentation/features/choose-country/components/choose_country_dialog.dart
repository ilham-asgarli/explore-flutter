import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/models/lang/lang.model.dart';
import '../../../../utils/di/injectable.dart';
import '../../../../utils/gen/assets.gen.dart';
import '../../../components/button/gradient_elevated_button.dart';
import '../../../utils/config/router/core/router_service.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../../utils/constants/router/router_constants.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/num_extension.dart';
import 'country.dart';

class ChooseCountryDialog extends StatelessWidget {
  final LangModel countryModel;

  const ChooseCountryDialog({super.key, required this.countryModel});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Country(
            countryModel: countryModel,
            isDialog: true,
          ),
          30.verticalSpace,
          GradientElevatedButton(
            onTap: () async {
              int id = countryModel.id;

              await getIt<SharedPreferences>()
                  .setInt(SharedPreferencesConstants.chosenCountryId, id);
              RouterService.instance.pushNamedAndRemoveUntil(
                path: RouterConstants.main,
              );
            },
            text: context.l10n.continue_,
          ),
          30.verticalSpace,
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ImageIcon(
              AssetImage(Assets.image.icBack.path),
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
