import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://ruywhsqamtjmokfoldiv.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ1eXdoc3FhbXRqbW9rZm9sZGl2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjg3MjA3NDEsImV4cCI6MjA0NDI5Njc0MX0.0qZEPocpgjSr64IymoUO8lTl_o3L6x2eGH6Ffjr_gU0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
