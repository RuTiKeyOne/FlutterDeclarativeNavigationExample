part of 'settings_navigation_bloc.dart';

@freezed
class SettingsNavigationEvent with _$SettingsNavigationEvent {
  const factory SettingsNavigationEvent.addUserSettings() =
      _SettingsNavigationSetUserSettings;
  const factory SettingsNavigationEvent.addThemeSettings() =
      _SettingsNavigationSetThemeSettings;
  const factory SettingsNavigationEvent.popUserSettings() =
      _SettingsNavigationUserSettingsPop;
  const factory SettingsNavigationEvent.popThemeSettings() =
      _SettingsNavigationThemeSettingsPop;
  const factory SettingsNavigationEvent.reset() = _SettingsNavigationReset;
}
