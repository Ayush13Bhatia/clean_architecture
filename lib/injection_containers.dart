import 'package:get_it/get_it.dart';

import 'features/data/data_source/http_service.dart';
import 'features/data/repository/repository.dart';
import 'features/domain/repositoty/repository.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  // sl.registerSingleton<HomeApiRepository>(getDataApi());
}