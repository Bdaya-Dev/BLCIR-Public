import 'package:cbirm_flutter/common.dart';

class NavigationTarget {
  final NavigationDestination destination;
  final String route;

  const NavigationTarget({
    required this.destination,
    required this.route,
  });
}
