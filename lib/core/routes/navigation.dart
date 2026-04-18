import 'package:flutter/cupertino.dart';

extension NavExtension on BuildContext {
  Route<T> _buildRoute<T>(Widget page) {
    return PageRouteBuilder<T>(
      transitionDuration: Duration(milliseconds: 300),
      reverseTransitionDuration: Duration(milliseconds: 300),
      pageBuilder: (_, _, _) => page,
      transitionsBuilder: (_, animation, _, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  Future<T?> push<T>({
    required Widget page,
    bool root = false,
  }) {
    return Navigator.of(this, rootNavigator: root)
        .push<T>(_buildRoute<T>(page));
  }

  Future<T?> pushReplace<T, TO>({required Widget page}) {
    return Navigator.of(this).pushReplacement<T, TO>(_buildRoute<T>(page));
  }

  void pop<T extends Object?>([T? result]) {
    Navigator.of(this).pop(result);
  }

  Future<T?> pushAndRemoveUntil<T>({required Widget page}) {
    return Navigator.of(this).pushAndRemoveUntil<T>(
      _buildRoute<T>(page),
          (route) => false,
    );
  }
}

// context.push()