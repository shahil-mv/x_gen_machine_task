// // dart format width=80
// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // InjectableConfigGenerator
// // **************************************************************************

// // ignore_for_file: type=lint
// // coverage:ignore-file

// // ignore_for_file: no_leading_underscores_for_library_prefixes
// import 'package:get_it/get_it.dart' as _i174;
// import 'package:injectable/injectable.dart' as _i526;
// import 'package:sample/features/screens/home/bloc/home_bloc.dart' as _i816;
// import 'package:sample/features/screens/home/domains/repo/home_repo.dart'
//     as _i322;
// import 'package:sample/features/screens/home/domains/services/home_serv.dart'
//     as _i301;

// extension GetItInjectableX on _i174.GetIt {
// // initializes the registration of main-scope dependencies inside of GetIt
//   _i174.GetIt init({
//     String? environment,
//     _i526.EnvironmentFilter? environmentFilter,
//   }) {
//     final gh = _i526.GetItHelper(
//       this,
//       environment,
//       environmentFilter,
//     );
//     gh.lazySingleton<_i322.HomeRepo>(() => _i301.HomeServ());
//     gh.factory<_i816.HomeBloc>(() => _i816.HomeBloc(gh<_i322.HomeRepo>()));
//     return this;
//   }
// }
