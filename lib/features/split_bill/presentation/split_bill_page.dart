import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:myapp/core/design_system/dimensions.dart';
import 'package:myapp/features/split_bill/domain/model/bill.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SplitBillPage extends StatelessWidget {
  const SplitBillPage({
    required this.bills,
    required this.totalUnits,
    super.key,
  });

  final List<Bill> bills;
  final int totalUnits;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: bills.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bill Calculation'),
          bottom: TabBar(
            labelPadding: const EdgeInsets.symmetric(vertical: md),
            tabs: bills.map((t) => Text(t.name)).toList(),
          ),
        ),
        body: TabBarView(
          children: bills.map((t) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: md),
              children: [
                const SizedBox(height: xl),
                Container(
                  padding: const EdgeInsets.all(md),
                  child: Row(
                    children: [
                      Animate(
                        onPlay: (ctrl) => ctrl.repeat(reverse: true),
                      ).custom(
                        duration: const Duration(seconds: 1),
                        builder: (_, value, __) => Icon(
                          Icons.electric_bolt,
                          size: xxl,
                          color: Theme.of(context).colorScheme.primary,
                          shadows: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withAlpha(200),
                              blurRadius: 20 * value,
                              spreadRadius: 1 * value,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: md),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "${t.unitsConsumed}",
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              const SizedBox(width: sm),
                              Text(
                                "KW/H",
                                style:
                                    Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          Text(
                            "Units consumed",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      ElevatedButton.icon(
                        onPressed: () => _showBill(context, t),
                        icon: const Icon(Icons.electric_meter),
                        label: const Text('View bill'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: md),
                SfCircularChart(
                  series: [
                    RadialBarSeries<Bill, String>(
                      dataSource: [t],
                      xValueMapper: (data, _) => data.name,
                      yValueMapper: (data, _) => data.unitsConsumed,
                      maximumValue: totalUnits.toDouble(),
                      cornerStyle: CornerStyle.bothFlat,
                      gap: '20%',
                      innerRadius: '60%',
                      pointColorMapper: (datum, index) =>
                          Theme.of(context).colorScheme.primary,
                      dataLabelSettings: DataLabelSettings(
                        isVisible: true,
                        textStyle: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: md),
                Container(
                  padding: const EdgeInsets.all(md),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(md),
                  ),
                  child: Column(
                    spacing: sm,
                    children: [
                      _BillLabel(
                        label: "Unit consumption amount",
                        amount: t.unitBillAmount.toStringAsFixed(2),
                      ),
                      _BillLabel(
                        label: "Tax and other charges",
                        amount: t.remainingBillAmount.toStringAsFixed(2),
                      ),
                      const Divider(),
                      _BillLabel(
                        label: "Total Bill",
                        amount: t.billSummation.toStringAsFixed(2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: xl),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  void _showBill(
    BuildContext context,
    Bill bill,
  ) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: lg, vertical: xl),
            child: Wrap(
              spacing: lg,
              children: [
                Text(
                  "Calculation details",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: xxl),
                _BillLabel(
                  label: "Unit used",
                  amount: bill.unitsConsumed.toString(),
                  showSymbol: false,
                ),
                _BillLabel(
                  label: "Total unit consumed",
                  amount: totalUnits.toString(),
                  showSymbol: false,
                ),
              ],
            ),
          );
        });
  }
}

class _BillLabel extends StatelessWidget {
  const _BillLabel({
    required this.label,
    required this.amount,
    this.showSymbol = true,
  });

  final String label;
  final String amount;
  final bool showSymbol;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Expanded(child: Container()),
        if (showSymbol)
          const Icon(
            Icons.currency_rupee,
            size: lg,
          ),
        const SizedBox(width: md),
        Text(
          amount,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
