import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_state.freezed.dart';

@freezed
sealed class ProcessState with _$ProcessState {
  const factory ProcessState.initial() = _Initial;
  const factory ProcessState.loading() = _Loading;
  const factory ProcessState.success() = _Success;
  const factory ProcessState.failure({required Exception exception}) = _Failure;

  const ProcessState._();

  bool get isError => maybeMap(failure: (_) => true, orElse: () => false);
}
