import 'package:app_bloc_clean/features/data/model/api_model.dart';
import 'package:app_bloc_clean/features/presentation/bloc/home_bloc.dart';
import 'package:app_bloc_clean/features/presentation/bloc/home_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeBloc>().getDataUseCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is HomeDataState) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.apiData?.length ?? 0,
                    itemBuilder: (_, i) {
                      ApiModel arg = state.apiData?[i];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                              child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 50, // Radius for the circular image
                                  backgroundImage: NetworkImage(arg.avatar), // Your image URL or asset
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(arg.firstName ?? ''),
                                  Text(arg.lastName ?? ''),
                                  Text(arg.email ?? ''),
                                ],
                              ),
                            ],
                          )),
                        ],
                      );
                    },
                  ),
                );
              }
              if (state is HomeErrorState) {
                print(state.error);
                return const Center(
                  child: Text("No Data Found"),
                );
              }
              return const Center(child: Text('data'));
            },
          )
        ],
      ),
    );
  }
}
