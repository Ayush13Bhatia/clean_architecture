import 'package:app_bloc_clean/core/resource/data_states.dart';
import 'package:equatable/equatable.dart';

import '../../data/model/api_model.dart';

abstract class HomeState extends Equatable {
  final List<dynamic>? apiData;
  final String? error;

  const HomeState({this.apiData, this.error});

  @override
  // TODO: implement props
  List<Object?> get props => [apiData, error];
}

class HomeLoadingState extends HomeState {
  @override
  const HomeLoadingState();
}

class HomeDataState extends HomeState {
  @override
  final List<dynamic>? apiData;
  const HomeDataState({this.apiData});
}

class HomeErrorState extends HomeState {
  @override
  String? error;

  HomeErrorState({this.error});
}
