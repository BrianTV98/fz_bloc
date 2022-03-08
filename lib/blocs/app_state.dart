
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState{
   const factory AppState.loading() = Loading;
   const factory AppState.ready() = Ready;
   const factory AppState.error({required String error}) = Error;
}