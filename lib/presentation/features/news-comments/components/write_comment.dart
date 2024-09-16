import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/gen/assets.gen.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/theme_extension.dart';
import '../../../viewmodels/app/make-comment/make_comment_bloc.dart';
import '../../../viewmodels/ephemeral/news-comments/news_comments_view_model.dart';
import '../../../widgets/my_profile_picture_image.dart';

class WriteComment extends StatelessWidget {
  final NewsCommentsViewModel viewModel;

  const WriteComment({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      decoration: BoxDecoration(
        color: context.theme.customColors.fourth,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: MyProfilePictureImageProvider(),
          ),
          Expanded(
            child: Padding(
              padding: context.paddingLowHorizontal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: viewModel.nameController,
                    style: const TextStyle(
                      fontFamily: "Matter",
                      fontSize: 16,
                    ),
                    maxLines: null,
                    maxLength: 50,
                    buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        required maxLength}) {
                      return null;
                    },
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: context.l10n.name,
                    ),
                  ),
                  TextFormField(
                    controller: viewModel.emailController,
                    style: const TextStyle(
                      fontFamily: "Matter",
                    ),
                    maxLines: null,
                    maxLength: 50,
                    buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        required maxLength}) {
                      return null;
                    },
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: context.l10n.email,
                    ),
                  ),
                  TextFormField(
                    controller: viewModel.commentController,
                    maxLines: null,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: context.l10n.yourComment,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: context.watch<MakeCommentBloc>().state.state !=
                    BlocState.loading
                ? IconButton(
                    onPressed: () {
                      viewModel.writeComment();
                    },
                    icon: Image.asset(
                      Assets.image.icSendSquare.path,
                      width: 35,
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.only(right: 10, top: 10),
                    width: 30,
                    height: 30,
                    child: const CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }
}
