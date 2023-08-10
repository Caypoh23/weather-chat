// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';

class ObservableState {
  //
  final bool isLoading;
  final String? errorMessage;

  final bool isActionLoading;
  final String? errorActionMessage;

  ObservableState({
    this.isLoading = false,
    this.errorMessage,
    //
    this.isActionLoading = false,
    this.errorActionMessage,
  });
}

class ObservableStore<StateType extends ObservableState, ActionType>
    extends Store<StateType> {
  //
  final BehaviorSubject<StateType> _stream = BehaviorSubject<StateType>();
  BehaviorSubject<StateType> get state$ => _stream;

  ObservableStore(
    Reducer<StateType> reducer,
    StateType initialState,
    middleware,
  ) : super(
          reducer,
          middleware: middleware,
          initialState: initialState,
        ) {
    onChange.pipe(_stream);
  }

  void dispose() {
    _stream.close();
  }
}

void loggerMiddleware(Store store, action, NextDispatcher next) {
  debugPrint('loggerMiddleware: ${store.runtimeType} - ${action.runtimeType}');
  next(action);
}
