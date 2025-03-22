import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/di_initializer/di_initializer.dart';

typedef OnFeatureFlowGeneratePages<T> = List<Page<dynamic>> Function(
    T state, List<Page<dynamic>> pages);

class FeatureFlowBuilder<T extends Object> extends StatefulWidget {
  const FeatureFlowBuilder({
    required this.initialFlowState,
    required this.onGeneratePages,
    this.initializer,
    super.key,
  });

  final T initialFlowState;
  final OnFeatureFlowGeneratePages<T> onGeneratePages;
  final DiInitializer? initializer;

  @override
  State<FeatureFlowBuilder<T>> createState() => _FeatureFlowBuilderState<T>();
}

class _FeatureFlowBuilderState<T extends Object>
    extends State<FeatureFlowBuilder<T>> {
  late FlowController<T> flowController;

  @override
  void initState() {
    di.pushNewScope(scopeName: hashCode.toString());
    flowController = FlowController<T>(widget.initialFlowState);
    di.registerSingleton<FlowController<T>>(flowController);
    super.initState();
  }

  @override
  void dispose() {
    di.dropScope(hashCode.toString());
    flowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlowBuilder(
      onGeneratePages: (state, pages) => widget.onGeneratePages(state, pages),
      controller: flowController,
    );
  }
}
