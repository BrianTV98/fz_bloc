import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.freezed.dart';

@freezed
class AppEvent with _$AppEvent{
  const factory AppEvent.load() = Load;
  const factory AppEvent.add({required int productID}) = Add;
  const factory AppEvent.remove({required String error}) = Remove;
}