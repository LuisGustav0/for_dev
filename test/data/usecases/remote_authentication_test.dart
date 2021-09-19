import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

abstract class HttpClient {
  Future<void>? request({
    required String url,
    required String method
  });
}

class HttpClientSpy extends Mock implements HttpClient {}

class RemoteAuthentication {
  final HttpClient httpClient;
  final String url;

  RemoteAuthentication({
    required this.httpClient,
    required this.url
  });

  Future<void>? auth() async {
    await httpClient.request(url: url, method: 'post');
  }
}

void main() {
  late HttpClientSpy httpClient;
  late RemoteAuthentication sut;
  late String url;

  setUp(() {
    url = faker.internet.httpUrl();

    httpClient = HttpClientSpy();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });

  test('Should call HttClient with correct values', () async {
    await sut.auth();

    verify(httpClient.request(
      url: url,
      method: 'post'
    ));
  });
}