import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/design_system/dimensions.dart';
import 'package:myapp/core/di_initializer/di_initializer.dart';
import 'package:myapp/features/split_bill/domain/model/meter.dart';
import 'package:myapp/features/split_bill/presentation/split_bill_form/bloc/split_bill_form_bloc.dart';

class SplitBillForm extends StatelessWidget {
  const SplitBillForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Split Bill'),
      ),
      body: BlocProvider<SplitBillFormBloc>(
        create: (_) => di<SplitBillFormBloc>(),
        child: const _SplitBillFormBody(),
      ),
    );
  }
}

class _SplitBillFormBody extends StatefulWidget {
  const _SplitBillFormBody();

  @override
  State<_SplitBillFormBody> createState() => _SplitBillFormBodyState();
}

class _SplitBillFormBodyState extends State<_SplitBillFormBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplitBillFormBloc, SplitBillFormState>(
      listenWhen: (previous, current) =>
          previous.processState != current.processState,
      listener: (context, state) {
        if (state.processState.isError) {
          ScaffoldMessenger.maybeOf(context)?.showSnackBar(
            SnackBar(
              content: Text(
                state.processState.maybeMap(
                  orElse: () => '',
                  failure: (f) => f.exception.toString(),
                ),
              ),
            ),
          );
        }
      },
      buildWhen: (previous, current) =>
          previous.processState != current.processState ||
          previous.meters.length != current.meters.length,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(md),
          child: Scaffold(
            primary: false,
            body: Form(
              key: _formKey,
              child: ListView(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      final unitConsumed = int.tryParse(value) ?? 0;
                      context.read<SplitBillFormBloc>().add(
                            SplitBillFormEvent.unitConsumptionChanged(
                              unitConsumed,
                            ),
                          );
                    },
                    validator: (s) => int.tryParse(s ?? '') == null
                        ? 'A number is required'
                        : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Units Consumed',
                    ),
                  ),
                  const SizedBox(height: md),
                  TextFormField(
                    onChanged: (value) {
                      final totalBill = double.tryParse(value) ?? 0;
                      context.read<SplitBillFormBloc>().add(
                            SplitBillFormEvent.totalBillChanged(
                              totalBill,
                            ),
                          );
                    },
                    validator: (s) => int.tryParse(s ?? '') == null
                        ? 'A number is required'
                        : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      labelText: 'Total Bill Amount',
                    ),
                  ),
                  const SizedBox(height: sm),
                  if (state.meters.isNotEmpty) ...[
                    const SizedBox(height: sm),
                    Row(
                      children: [
                        Text(
                          'Submeters',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(width: md),
                        const Expanded(child: Divider()),
                      ],
                    ),
                  ],
                  const SizedBox(height: sm),
                  ...state.meters.map(
                    (t) => _MeterConsumption(meter: t),
                  ),
                  const SizedBox(height: sm),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<SplitBillFormBloc>().add(
                            const SplitBillFormEvent.addMeter(),
                          );
                    },
                    label: const Text('Add sub meter reading'),
                  ),
                  const SizedBox(height: sm),
                ],
              ),
            ),
            persistentFooterButtons: state.meters.isNotEmpty
                ? [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                context
                                    .read<SplitBillFormBloc>()
                                    .add(const SplitBillFormEvent.splitBill());
                              }
                            },
                            child: const Text('Split Bill'),
                          ),
                        ),
                      ],
                    )
                  ]
                : null,
          ),
        );
      },
    );
  }
}

class _MeterConsumption extends StatelessWidget {
  const _MeterConsumption({
    required this.meter,
  });

  final Meter meter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: md),
      child: TextFormField(
        key: ValueKey(meter.id),
        initialValue: meter.unitConsumed.toString(),
        onChanged: (value) {
          final unitConsumed = int.tryParse(value) ?? 0;
          context.read<SplitBillFormBloc>().add(
                SplitBillFormEvent.updateMeter(
                  meter.copyWith(
                    unitConsumed: unitConsumed,
                  ),
                ),
              );
        },
        validator: (s) =>
            int.tryParse(s ?? '') == null ? 'A number is required' : null,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(
          labelText: 'Units consumed by submeter',
          suffixIcon: IconButton(
            onPressed: () {
              context.read<SplitBillFormBloc>().add(
                    SplitBillFormEvent.deleteMeter(
                      meter,
                    ),
                  );
            },
            icon: Icon(
              Icons.delete,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ),
    );
  }
}
