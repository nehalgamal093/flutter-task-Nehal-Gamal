import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/features/packages/domain/use_cases/get_packages_use_case.dart';

import '../../../data/models/package.dart';

part 'packages_state.dart';

@injectable
class PackagesCubit extends Cubit<PackagesState> {
  GetPackageUseCase getPackageUseCase;
  PackagesCubit(this.getPackageUseCase) : super(PackagesInitial());

  void getPackages() async {
    emit(PackagesLoading());
    try {
      List<Package> packages = await getPackageUseCase.getPackages();
      emit(PackagesSuccess(packages: packages));
    } catch (e) {
      emit(PackagesFailed());
    }
  }
}
