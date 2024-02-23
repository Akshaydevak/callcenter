import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:salesapp/Datas/repositorys.dart';
import 'package:salesapp/utils/response_utils.dart';

part 'post_captcha_state.dart';
part 'post_captcha_cubit.freezed.dart';

class PostCaptchaCubit extends Cubit<PostCaptchaState> {
  final salesappRepository _repos = salesappRepoImpl();
  PostCaptchaCubit() : super(PostCaptchaState.initial());
  Future postCaptcha(String captchaId,String captchaText) async {

    final result = await _repos.postCaptcha(captchaId,captchaText);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
