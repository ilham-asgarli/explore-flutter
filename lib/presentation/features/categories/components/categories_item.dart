import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/models/category/category.model.dart';
import '../../../../domain/usecases/feed/get_feeds.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/config/router/core/categories_router_service.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../../utils/constants/router/categories_router_constants.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../viewmodels/app/feeds/feeds_bloc.dart';

class CategoriesItem extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoriesItem({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        int? countryId = getIt<SharedPreferences>()
            .getInt(SharedPreferencesConstants.chosenCountryId);

        getIt<FeedsBloc>().add(GetFeeds(
          params: GetFeedsUseCaseParams(
            countryId: countryId!,
            categoryId: categoryModel.id,
          ),
        ));
        CategoriesRouterService.instance.pushNamed(
          path: CategoriesRouterConstants.categoryNews,
        );
      },
      child: Ink(
        padding: context.paddingNormal,
        decoration: BoxDecoration(
          color: const Color(0xFFff0000),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.network(
                categoryModel.icon,
                width: 50,
                height: 50,
              ),
            ),
            Text(
              categoryModel.name.tr,
              style: TextStyle(
                fontFamily: "Matter",
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
