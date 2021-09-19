import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:for_dev/domain/usecases/authentication.dart';

abstract class HttpClient {
  Future<void>? request({
    required String url,
    required String method,
    Map body
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

  Future<void>? auth(AuthenticationParams params) async {
    final body = {
      'email': params.email,
      'password': params.password
    };

    await httpClient.request(
        url: url,
        method: 'post',
        body: body
    );
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
    final params = AuthenticationParams(
        email: faker.internet.email(),
        password: faker.internet.password()
    );

    await sut.auth(params);

    verify(httpClient.request(
      url: url,
      method: 'post',
      body: {
        'email': params.email,
        'password': params.password
      }
    ));
  });
}