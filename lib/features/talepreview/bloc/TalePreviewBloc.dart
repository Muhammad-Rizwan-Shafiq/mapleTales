import 'dart:async';
import 'dart:convert';
import 'package:talepreview/features/talepreview/bloc/states/TalePreviewState.dart';
import 'package:http/http.dart' as http;

class TalePreviewBloc {
  final  _stateStreamController = StreamController<TalePreviewState>();
  Stream<TalePreviewState> get stateStream => _stateStreamController.stream;

  void fetchData() async {
    _stateStreamController.add(LoadingState());

    try {

      final response = await http.get(Uri.parse('http://127.0.0.1:9000/talepreview/'));
      print("Han bhangi");
      if (response.statusCode == 201) {
        final jsonData = json.decode(response.body);
        print("${jsonData}");
        _stateStreamController.add(SuccessState(jsonData as List<dynamic>));
      } else {
        _stateStreamController.add(ErrorState('API request failed'));
        print("fail horae hai");
      }
    } catch (e) {
      _stateStreamController.add(ErrorState('Error occurred'));

    }
  }

  void dispose() {
    _stateStreamController.close();
  }
}
