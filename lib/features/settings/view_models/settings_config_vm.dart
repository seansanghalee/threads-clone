import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:threads_clone/features/settings/models/settings_config_model.dart';
import 'package:threads_clone/features/settings/repos/settings_config_repo.dart';

class SettingsConfigViewModel extends Notifier<SettingsConfigModel> {
  final SettingsConfigRepository _repository;

  SettingsConfigViewModel(this._repository);

  void setDarkMode(bool value) {
    _repository.setDarkMode(value);
    state = SettingsConfigModel(isDarkMode: value);
  }

  @override
  SettingsConfigModel build() {
    return SettingsConfigModel(
      isDarkMode: _repository.isDarkMode(),
    );
  }
}

final settingsConfigProvider =
    NotifierProvider<SettingsConfigViewModel, SettingsConfigModel>(
  () => throw UnimplementedError(),
);
