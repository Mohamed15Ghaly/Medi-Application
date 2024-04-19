abstract class ApiConsumer {
  Future<dynamic> get(String url);
  Future<dynamic> post(String url, {required Map<String, dynamic> body});
  Future<dynamic> put(String url, {required Map<String, dynamic> body});
  Future<dynamic> delete(String url);
}
