import 'dart:convert';

import 'package:app_bloc_clean/core/resource/data_states.dart';

import 'package:app_bloc_clean/features/data/model/api_model.dart';

import '../../../core/app_const.dart';
import '../../domain/repositoty/repository.dart';
import '../data_source/http_service.dart';

class DataApiRepository extends HomeApiRepository {
  DataApiRepository();

  @override
  Future<DataStates<List<dynamic>>> getDataApi() async {
    try {
      var response = await ApiProvider.getDataApi(AppConst.baseApi);
      final jsonData = jsonDecode(response.body);


      var data = jsonData['data'] ?? [];

      if (response.statusCode != 200) return DataFailed('');
      print(DataSuccess(data.map((e) => ApiModel.fromJson(e)).toList()));
      return DataSuccess(data.map((e) => ApiModel.fromJson(e)).toList());
    } catch (e) {
      return DataFailed(e.toString());
    }
  }
}
