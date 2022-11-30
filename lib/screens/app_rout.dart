import 'package:flutter/material.dart';
import 'package:flutter_animated_example/screens/car/car_page.dart';
import 'package:flutter_animated_example/screens/changed_border/changed_border_page.dart';
import 'package:flutter_animated_example/screens/color_changed/color_changed_page.dart';
import 'package:flutter_animated_example/screens/page_view/page_view_page.dart';
import 'package:flutter_animated_example/screens/positioned_container/positioned_container_page.dart';

import 'changed_size/changed_size.dart';
import 'flexible_container/flexible_container.dart';
import 'home/home_page.dart';
import 'indicator/indicator_page.dart';

abstract class RoutName {
  static const car = 'car';
  static const changedColor = 'changedColor';
  static const home = 'home';
  static const positioned = 'positioned';
  static const changedSize = 'changedSize';
  static const flexible = 'flexible';
  static const indicator = 'indicator';
  static const border = 'border';
  static const pageView = 'pageView';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutName.car:
        return MaterialPageRoute(builder: (_) => CarPage());
      case RoutName.changedColor:
        return MaterialPageRoute(builder: (_) => ColorChangedPage());
      case RoutName.flexible:
        return MaterialPageRoute(builder: (_) => FlexibleContainerPage());
      case RoutName.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RoutName.positioned:
        return MaterialPageRoute(builder: (_) => PositionedContainerPage());
      case RoutName.changedSize:
        return MaterialPageRoute(builder: (_) => ChangedSizePage());
      case RoutName.indicator:
        return MaterialPageRoute(builder: (_) => IndicatorPage());
      case RoutName.border:
        return MaterialPageRoute(builder: (_) => ChangedBorderPage());
      case RoutName.pageView:
        return MaterialPageRoute(builder: (_) => PageviewPage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
