import 'package:bookly_app/Features/Home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // get api :=
  getIt.registerSingleton<APISrevice>(APISrevice(Dio()));
  // get repo impl :=
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<APISrevice>()),
  );
}
