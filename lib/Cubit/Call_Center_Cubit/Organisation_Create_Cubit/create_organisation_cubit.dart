import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Channel/Create_Channel.dart';

import '../../../utils/response_utils.dart';

part 'create_organisation_state.dart';
part 'create_organisation_cubit.freezed.dart';

class CreateOrganisationCubit extends Cubit<CreateOrganisationState> {
  final salesappRepository _repos = salesappRepoImpl();
  CreateOrganisationCubit() : super(CreateOrganisationState.initial());
  Future postCreateOrganisation(CreateOrganisation model) async {
    emit(_Loading());
    print("Channel create call");
    final result = await _repos.postCreateOrganisation(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
