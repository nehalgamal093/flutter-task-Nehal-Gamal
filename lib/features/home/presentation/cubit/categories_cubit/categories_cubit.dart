import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/features/home/data/models/category.dart';
import 'package:otex_app/features/home/domain/use_cases/get_categories.dart';

part 'categories_state.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  GetCategoriesUseCase getCategoriesUseCase;
  CategoriesCubit(this.getCategoriesUseCase) : super(CategoriesInitial());
  void getCategories() async {
    emit(CategoriesLoading());
    try {
      List<Category> categories = await getCategoriesUseCase.getCategories();
      emit(CategoriesSuccess(categories: categories));
    } catch (e) {
      emit(CategoriesFailed());
    }
  }
}
