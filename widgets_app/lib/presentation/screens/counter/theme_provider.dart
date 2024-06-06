import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false);
final selectedColorProvider = StateProvider((ref) => 0);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // State = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkModeCopy: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColorCopy: colorIndex);
  }
}
