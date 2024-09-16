import 'package:flutter/cupertino.dart';

import '../../../../data/models/news/news.model.dart';
import '../../../../domain/usecases/feed/create_comment.usecase.dart';
import '../../../../domain/usecases/feed/get_comments.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../app/comments/comments_bloc.dart';
import '../../app/make-comment/make_comment_bloc.dart';

class NewsCommentsViewModel {
  final NewsModel news;

  NewsCommentsViewModel({
    required this.news,
  }) {
    getIt<CommentsBloc>().add(const Clear());
    getIt<CommentsBloc>()
        .add(GetComments(params: GetCommentsUseCaseParams(feedId: news.id)));

    getIt<MakeCommentBloc>().stream.listen((state) {
      if (state.state == BlocState.success) {
        getIt<CommentsBloc>().add(GetComments(
          params: GetCommentsUseCaseParams(feedId: news.id),
        ));
        commentController.clear();
        nameController.clear();
        emailController.clear();
      }
    });
  }

  final TextEditingController commentController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  writeComment() {
    if (commentController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty) {
      getIt<MakeCommentBloc>().add(MakeComment(
        params: CreateCommentUseCaseParams(
          feedId: news.id,
          comment: commentController.text,
          name: nameController.text,
          email: emailController.text,
        ),
      ));
    }
  }
}
