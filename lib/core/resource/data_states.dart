abstract class DataStates<T> {
  final T? data;
  final String? error;

  DataStates({this.data, this.error});
}

class DataSuccess<T> extends DataStates<T> {
  DataSuccess(T data) : super(data: data);
}
class DataFailed<T> extends DataStates<T>{
  DataFailed(String error) : super(error: error);
}