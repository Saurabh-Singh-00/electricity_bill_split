import 'package:flutter/material.dart';
import 'package:myapp/core/navigation/feature_flow_builder.dart';
import 'package:myapp/features/split_bill/flow/split_bill_flow_state.dart';
import 'package:myapp/features/split_bill/presentation/split_bill_form/split_bill_form.dart';
import 'package:myapp/features/split_bill/presentation/split_bill_page.dart';

class SplitBill extends StatelessWidget {
  const SplitBill({super.key});

  @override
  Widget build(BuildContext context) {
    return FeatureFlowBuilder(
      initialFlowState: const SplitBillFlowState.initial(),
      onGeneratePages: onGeneratePages,
    );
  }

  List<Page<dynamic>> onGeneratePages(
      SplitBillFlowState state, List<Page<dynamic>> pages) {
    return state.map(
      initial: (_) => [const MaterialPage(child: SplitBillForm())],
      billGenerated: (state) => [
        ...pages,
        MaterialPage(
          child: SplitBillPage(
            bills: state.bills,
            totalUnits: state.totalUnitsConsumed,
          ),
        ),
      ],
    );
  }
}
