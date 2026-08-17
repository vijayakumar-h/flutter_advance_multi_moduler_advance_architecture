import 'package:app_settings/provider/app_settings_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppSettingProvider, env: [Environment.prod])
class ProdAppSettingsProviderImpl extends AppSettingProvider {
  @override
  String getAppLanguage() {
    return 'English';
  }

  @override
  String getThemeType() {
    return 'dark';
  }
}

@Injectable(as: AppSettingProvider, env: [Environment.dev])
class DevAppSettingsProviderImpl extends AppSettingProvider {
  @override
  String getAppLanguage() {
    return 'Kannada';
  }

  @override
  String getThemeType() {
    return 'light';
  }
}
