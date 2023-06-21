import 'package:act/app/utils/app_theme_state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders {
  List<SingleChildWidget> appProviders = [
    ChangeNotifierProvider(create: (_) => AppThemeState()),
  ];
}
