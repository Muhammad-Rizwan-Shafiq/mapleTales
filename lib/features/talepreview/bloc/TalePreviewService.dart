import 'package:talepreview/features/talepreview/models/TalePreview.dart';

class TalePreviewService extends ReadApiService<String, TalePreview> {
  @override
  Future<List<TalePreview>> getAll() async {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<TalePreview> get(String id) async {
    // TODO: implement get
    throw UnimplementedError();
  }
}

abstract class ReadApiService<K, V> {
  Future<List<V>> getAll();
  Future<V> get(K id);
}
