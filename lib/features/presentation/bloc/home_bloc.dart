import 'package:app_bloc_clean/core/resource/data_states.dart';
import 'package:app_bloc_clean/features/presentation/bloc/home_event.dart';
import 'package:app_bloc_clean/features/presentation/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_data_usecase.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetDataUseCase getDataUseCase;

  HomeBloc(this.getDataUseCase) : super(const HomeLoadingState()) {
    on<HomeEvent>(onGetData);
  }

  void onGetData(HomeEvent event, Emitter<HomeState> emit) async {
    final result = await getDataUseCase();
    if(result is DataSuccess){
      print('object12');
      print(result.data);
      emit(HomeDataState(
        apiData:  result.data
      ));
    }
    if(result is DataFailed){
      emit(HomeErrorState(error: result.error));
    }
  }
}
