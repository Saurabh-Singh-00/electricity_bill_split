// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flow_builder/flow_builder.dart' as _i683;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:myapp/features/split_bill/domain/usecase/generate_bill_usecase.dart'
    as _i343;
import 'package:myapp/features/split_bill/flow/split_bill_flow_state.dart'
    as _i201;
import 'package:myapp/features/split_bill/presentation/split_bill_form/bloc/split_bill_form_bloc.dart'
    as _i761;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i343.GenerateBillUsecase>(() => _i343.GenerateBillUsecase());
    gh.factory<_i761.SplitBillFormBloc>(() => _i761.SplitBillFormBloc(
          gh<_i683.FlowController<_i201.SplitBillFlowState>>(),
          gh<_i343.GenerateBillUsecase>(),
        ));
    return this;
  }
}
