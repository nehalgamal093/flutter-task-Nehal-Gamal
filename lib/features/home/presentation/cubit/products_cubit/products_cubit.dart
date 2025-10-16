import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:otex_app/features/home/domain/use_cases/get_products_use_case.dart';
import '../../../data/models/product.dart';
part 'products_state.dart';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  GetProductsUseCase getProductsUseCase;

  ProductsCubit(this.getProductsUseCase) : super(ProductsInitial());

  void getProducts() async {
    emit(ProductsLoading());

    try {
      List<Product> products = await getProductsUseCase.getProducts();

      emit(ProductsSuccess(products: products));
    } catch (e) {
      emit(ProductsFailed());
    }
  }

}
