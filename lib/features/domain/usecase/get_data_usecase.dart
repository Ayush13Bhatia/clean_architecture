import '../../../core/resource/data_states.dart';
import '../../../core/usecase/usecase.dart';
import '../../data/model/api_model.dart';
import '../repositoty/repository.dart';

class GetDataUseCase implements UseCase<DataStates<List<dynamic>>, void> {
  final HomeApiRepository _homeApiRepository;

  GetDataUseCase(this._homeApiRepository);

  @override
  Future<DataStates<List<dynamic>>> call({void param}) {
    return _homeApiRepository.getDataApi();
  }
}
