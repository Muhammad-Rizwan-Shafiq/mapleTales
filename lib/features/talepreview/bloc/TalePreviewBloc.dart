import 'dart:async';
import 'dart:convert';
import 'package:talepreview/features/talepreview/bloc/states/TalePreviewState.dart';
import 'package:http/http.dart' as http;
import 'package:talepreview/features/talepreview/models/TalePreview.dart';
import 'package:talepreview/res/app_url/app_url.dart';

class TalePreviewBloc {
  final _stateStreamController = StreamController<TalePreviewState>();
  static List<TalePreview> talePreviews = [];
  List<TalePreview> get talePreviewsList => talePreviews;
  Stream<TalePreviewState> get stateStream => _stateStreamController.stream;
  static int totalReads = 0;
  int get getTotalReads => totalReads;
  void increaseReads() {
    totalReads++;
    print(totalReads);
  }

  void fetchData() async {
    if(talePreviews.isEmpty) {
      _stateStreamController.add(LoadingState());

      try {
        final response =
        await http.get(Uri.parse(AppUrl.talePreview));

        if (response.statusCode == 201) {
          final jsonData = json.decode(response.body);
          talePreviews = (jsonData as List<dynamic>)
              .map((item) => TalePreview.fromJson(item))
              .toList();
          _stateStreamController.add(SuccessState(talePreviews));
        } else {
          _stateStreamController.add(ErrorState('API request failed'));
        }
      } catch (e) {
        _stateStreamController.add(ErrorState('Error occurred'));
      }
    }
  }
  void getListSorted(){
    if(talePreviews.isNotEmpty){

    }
  }

  void dispose() {
    _stateStreamController.close();
  }
}
