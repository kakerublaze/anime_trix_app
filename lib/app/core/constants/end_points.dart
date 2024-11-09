import 'package:anime_trix/app/core/utils/exports.dart';

class EndPoints {
  // --> Base URL
  static String baseUrl = dotenv.env['baseUrl'] ?? '';
  static String animeSearch = dotenv.env['animeSearch'] ?? '';
  static String animeDetails = dotenv.env['animeDetails'] ?? '';
  static String animeStream = dotenv.env['animeStream'] ?? '';
  static String airingSchedule = dotenv.env['airingSchedule'] ?? '';
}
