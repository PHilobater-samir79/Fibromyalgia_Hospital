class SettingModel {
  final String title;

  SettingModel({required this.title});

  static List<SettingModel> lanItem = [
    SettingModel(title: 'English'),
    SettingModel(title: 'Arabic'),

  ];

  static List<SettingModel> currencyItem = [
    SettingModel(title: r'$-USD'),
    SettingModel(title: 'EG-Egypt')
  ];



}
