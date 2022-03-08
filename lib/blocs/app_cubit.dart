import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fz_bloc_demo/blocs/app_event.dart';
import 'package:fz_bloc_demo/blocs/app_state.dart';

class AppCubit extends Bloc<AppEvent,AppState>{
  AppCubit() : super(const AppState.loading()){
    on<Load>(_mapLoadEvent);
    on<Add>(_mapAddEvent);
    on<Remove>(_mapRemoveEvent);
  }

  FutureOr<void> _mapLoadEvent(Load event, Emitter<AppState> emit) {

  }

  FutureOr<void> _mapAddEvent(Add event, Emitter<AppState> emit) {
  }

  FutureOr<void> _mapRemoveEvent(Remove event, Emitter<AppState> emit) {
  }
}