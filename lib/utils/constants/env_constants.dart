abstract class EnvConstants {
  static const String dev = 'DEV';
  static const String stage = 'STAGING';
  static const String preProd = 'PRE_PRO';
  static const String prod = 'PRODUCTION';

  static const String secureStorageTag = 'betControl';
  static const String dbTag = 'betControl';

  static const String devBaseUrlDev = 'https://apidev.betcontrol.com/';
  static const String stageBaseUrlDev = 'https://apistage.betcontrol.com/';
  static const String preProdBaseUrlDev = 'https://apipreprod.betcontrol.com/';
  static const String prodBaseUrlDev = 'https://api.betcontrol.com/';

  static const timeout = Duration(seconds: 30);
}
