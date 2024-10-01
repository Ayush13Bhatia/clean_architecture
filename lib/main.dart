
import 'package:app_bloc_clean/features/presentation/bloc/home_bloc.dart';
import 'package:app_bloc_clean/features/presentation/bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/data/repository/repository.dart';
import 'features/domain/repositoty/repository.dart';
import 'features/domain/usecase/get_data_usecase.dart';
import 'features/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(GetDataUseCase(DataApiRepository()))..add(HomeEventData()),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
