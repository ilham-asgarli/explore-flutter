part of 'categories_bloc.dart';

@immutable
sealed class CategoriesEvent {
  const CategoriesEvent();
}

class GetCategories extends CategoriesEvent {
  const GetCategories();
}
