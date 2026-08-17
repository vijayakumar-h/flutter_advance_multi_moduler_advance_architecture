import 'package:datastore/provider/session_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl extends SessionProvider {
  @override
  String getAccessToken() {
    return "access token from user session API";
  }

  @override
  String getClientId() {
    return "1111111111";
  }

  @override
  String getRefreshToken() {
    return "refresh token from user session API";
  }

  @override
  String getUserId() {
    return "123456789";
  }
}

class DevSessionProviderImpl extends SessionProvider {
  @override
  String getAccessToken() {
    return "access token from user session API";
  }

  @override
  String getClientId() {
    return "1111111111";
  }

  @override
  String getRefreshToken() {
    return "refresh token from user session API";
  }

  @override
  String getUserId() {
    return "123456789";
  }
}
