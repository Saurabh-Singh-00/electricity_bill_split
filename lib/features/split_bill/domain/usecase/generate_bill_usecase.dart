import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/features/split_bill/domain/model/bill.dart';
import 'package:myapp/features/split_bill/domain/model/meter.dart';

@injectable
class GenerateBillUsecase {
  Either<Exception, List<Bill>> call(
    int totalUnitConsumed,
    double totalBillAmount,
    List<Meter> meters,
  ) {
    int unitConsumed = meters.fold(0, (p, t) => p + t.unitConsumed);
    final meterRatio = unitConsumed / totalUnitConsumed;
    final remainingAmount = totalBillAmount * (1 - meterRatio);
    final List<Bill> bills = [];
    for (final meter in meters) {
      final ratio = meter.unitConsumed / totalUnitConsumed;
      final meterBill = totalBillAmount * ratio;
      final adjustedAmount =
          remainingAmount * (meter.unitConsumed / unitConsumed);
      final bill = Bill(
        unitsConsumed: meter.unitConsumed,
        name: meter.name,
        unitBillAmount: meterBill,
        remainingBillAmount: adjustedAmount,
        billSummation: meterBill + adjustedAmount,
        totalBillAmount: totalBillAmount,
      );
      bills.add(bill);
    }
    return Right(bills);
  }
}
