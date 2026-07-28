import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static const String url = 'https://ttmdhsfgsppmfjwrwhwt.supabase.co';
  static const String anonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR0bWRoc2Znc3BwbWZqd3J3aHd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODUwNDU1NzMsImV4cCI6MjEwMDYyMTU3M30.isTAo_kan_ZhPTGnekRaQH7Cdt1XVG3tViSPg4sis4I';

    static Future<void> initialize() async {
    if (url.isEmpty || anonKey.isEmpty) {
      return;
    }

    await Supabase.initialize(url: url, publishableKey: anonKey);
  }
}