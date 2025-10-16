import 'package:injectable/injectable.dart';
import 'package:otex_app/features/packages/data/models/package.dart';
import 'package:otex_app/features/packages/data/remote_ds/packages_remote_ds.dart';

@injectable
class GetPackageUseCase {
  PackageRemoteDs packageRemoteDs;
  GetPackageUseCase(this.packageRemoteDs);

  Future<List<Package>> getPackages() => packageRemoteDs.getPackages();
}
