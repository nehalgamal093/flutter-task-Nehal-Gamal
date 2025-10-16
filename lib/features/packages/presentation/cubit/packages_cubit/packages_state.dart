part of 'packages_cubit.dart';

@immutable
sealed class PackagesState {}

final class PackagesInitial extends PackagesState {}
final class PackagesLoading extends PackagesState {}

final class PackagesSuccess extends PackagesState {
  final List<Package> packages;
  PackagesSuccess({required this.packages});
}

final class PackagesFailed extends PackagesState {}