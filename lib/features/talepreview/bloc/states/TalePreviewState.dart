abstract class TalePreviewState {}



class InitialState extends TalePreviewState {}

class LoadingState extends TalePreviewState {}

class SuccessState extends TalePreviewState {
  final List<dynamic> data;

  SuccessState(this.data);
}

class ErrorState extends TalePreviewState {
  final String error;

  ErrorState(this.error);
}