// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Package imports:
import 'package:flash/flash.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:weather/app.dart';
import 'package:weather/conf/enums/alert_type_enum.dart';
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/duration_constants.dart';
import 'package:weather/feature/pop_ups/base_detail.dart';
import 'package:weather/theme/default/default_cupertino_action_sheet.dart';

@singleton
class NavigatorService {
  //
  static final key = GlobalKey<NavigatorState>();
  NavigatorState get _currentState => key.currentState!;
  BuildContext get _context => _currentState.context;

  final _homeIndex = BehaviorSubject<int>.seeded(0);
  BehaviorSubject<int> get homeIndex$ => _homeIndex;

  //

  void dispose() {
    _homeIndex.close();
  }

  //

  void setHomeIndex(int index) {
    _homeIndex.add(index);
  }

  //

  void updateLocale() {
    MyApp.of(_context)!.updateLocale();
  }

  //

  void clearFocus() {
    FocusScope.of(_context).requestFocus(FocusNode());
  }

  Future pushNamed(String routeName, {Object? arguments}) {
    return _currentState.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return _currentState.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    final predicate = ModalRoute.withName(routeName);
    return _currentState.pushNamedAndRemoveUntil(
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  //

  Future<bool> pop([result]) {
    return _currentState.maybePop(result);
  }

  void popUntil(String routeName) {
    final predicate = ModalRoute.withName(routeName);
    _currentState.popUntil(predicate);
  }

  bool canPop([result]) {
    return _currentState.canPop();
  }

  //

  Future showMyModalBottomSheet(
    Widget child, {
    bool isScrollable = false,
  }) {
    return showModalBottomSheet(
      context: _context,
      builder: (_) => child,
      isScrollControlled: true,
      shape: isScrollable ? MyBorderRadius.popUpRounded : null,
      backgroundColor: isScrollable ? MyColors.white : MyColors.transparent,
    );
  }

  Future showMyCupertinoModalPopup({
    required List<Widget> actions,
    String? title,
    bool isSkip = false,
  }) {
    return showCupertinoModalPopup(
      context: _context,
      builder: (_) => MyCupertinoActionSheet(
        title: title,
        actions: actions,
        isSkip: isSkip,
      ),
    );
  }

  //

  void showAlert(
    String message, {
    String? title,
    void Function()? onTap,
    AlertType type = AlertType.error,
  }) {
    showFlash(
      context: _context,
      duration: MyDurations.s5,
      builder: (context, controller) {
        return Flash(
          controller: controller,
          position:
              type == AlertType.push ? FlashPosition.top : FlashPosition.bottom,
          dismissDirections: const [FlashDismissDirection.startToEnd],
          child: BaseDetail(
            onTap: onTap,
            icon: type.icon,
            color: type.color,
            description: message,
            title: title ?? type.title,
            borderColor: type.borderColor,
            onClose: () => controller.dismiss(),
          ),
        );
      },
    );
  }
}

//

void addPostFrameCallback(Function callback) {
  SchedulerBinding.instance.addPostFrameCallback((_) => callback());
}

void addPostFrameCallbackW(Function callback) {
  WidgetsBinding.instance.addPostFrameCallback((_) => callback());
}
