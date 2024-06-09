import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light => _themeData(Brightness.light);
  static ThemeData get dark => _themeData(Brightness.dark);

  static ThemeData _themeData(Brightness brightness) {
// إذا تم تحديد مواصفات `deepPurple` الافتراضية، فإن مواصفات مُنشئ `ThemeData.light` كافية.
// اكتب "fromSeed" لتسهيل تغيير "seedColor" عند استخدام القالب
    final themeData = ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: brightness,
      ),
    );

    return themeData.copyWith(
// أريد تطبيقه على TextTheme الذي تم إنشاؤه بواسطة "ThemeData.from"، لذا لا يمكنني توصيله بـ "copyWith"
      textTheme: themeData.textTheme.apply(
        fontFamily: 'Poppins',
        // fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      dividerTheme: const DividerThemeData(space: 0),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}
