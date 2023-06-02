import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talepreview/features/talepreview/bloc/TalePreviewService.dart';
import 'package:talepreview/features/talepreview/bloc/events/TalePreviewEvent.dart';
import 'package:talepreview/features/talepreview/bloc/states/TalePreviewState.dart';
import 'package:talepreview/features/talepreview/models/TalePreview.dart';

class TalePreviewBloc extends Bloc<TalePreviewEvent, TalePreviewState> {
  final ReadApiService<String, TalePreview> fetchService = TalePreviewService();

  TalePreviewBloc(super.initialState);
}
