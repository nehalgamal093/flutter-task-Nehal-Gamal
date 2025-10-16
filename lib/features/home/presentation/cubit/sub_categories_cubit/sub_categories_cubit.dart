import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/features/home/data/models/sub_category.dart';
import 'package:otex_app/features/home/domain/use_cases/get_sub_categories.dart';

part 'sub_categories_state.dart';

@injectable
class SubCategoriesCubit extends Cubit<SubCategoriesState> {
  GetSubCategoriesUseCase getSubCategoriesUseCase;
  SubCategoriesCubit(this.getSubCategoriesUseCase)
    : super(SubCategoriesInitial());
  void getSubCategories() async {
    emit(SubCategoriesLoading());
    try {
      List<SubCategory> subCategories = await getSubCategoriesUseCase
          .getSubCategories();
      emit(SubCategoriesSuccess(subCategories: subCategories));
    } catch (e) {
      emit(SubCategoriesFailed());
    }
  }
}
