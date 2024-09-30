

import '../../../core/resource/data_states.dart';
import '../../data/model/api_model.dart';

abstract class HomeApiRepository{
  Future<DataStates<List<dynamic>>> getDataApi();
}