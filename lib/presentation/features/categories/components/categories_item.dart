import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/utils/logic/constants/router/categories_router_constants.dart';
import 'package:explore/utils/logic/core/router/categories_router_service.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CategoriesRouterService.instance.pushNamed(
          path: CategoriesRouterConstants.categoryNews,
        );
      },
      child: Ink(
        padding: context.paddingNormal,
        decoration: BoxDecoration(
          color: HexColor("#ff0000"),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Football_%28soccer_ball%29.svg/512px-Football_%28soccer_ball%29.svg.png",
                width: 50,
                height: 50,
              ),
            ),
            Text(
              "Kategori",
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
