import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Cubit/Otp_cubit/otp_cubit.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'Sign_In_Hilal.dart';

class OtpScreen extends StatefulWidget {
  final String mobile;
  final String email;
  final int createdCode;
  const OtpScreen({Key? key, 
    required this.mobile,
    required this.email,
    required this.createdCode}) : super(key: key);

  @override
  State<OtpScreen> createState() => _SignInHilalWebState();
}

class _SignInHilalWebState extends State<OtpScreen> {
  TextEditingController otpContoller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>OtpCubit())
      ],
      child: Builder(
        builder: (context) {
          return BlocListener<OtpCubit, OtpState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                error: () {
                  context.showSnackBarError("error!");
                },
                loading: () {
                  context.showSnackBarNormal("Loading");
                },
                success: (data) {
                  print(data.data1);
                  print(data.data2);
                  if (data.data1) {

                    Navigator.pushNamed(
                        context,'/');
                  } else {
                    // changeIndex(0);
                    context.showSnackBarError(data.data2);
                  }
                });

  },
  child: Scaffold(
            backgroundColor: Color(0xffE5E5E5),
            body: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: context.blockSizeVertical*40,
                    width: context.blockSizeHorizontal*22,
                    // color: Color(0xffFFFFFF),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: context.blockSizeHorizontal*0.005,
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: context.blockSizeVertical*10,),
                        Text("OTP",
                          style: TextStyle(
                            fontSize: context.blockSizeHorizontal*1.5,fontWeight: FontWeight.w800),),
                        SizedBox(height: context.blockSizeVertical*3,),
                        EmailTextFields(text: "Enter OTP",controller: otpContoller,),
                        SizedBox(height: context.blockSizeVertical*3,),
                        ButtonsCommon(color1: 0xffFFFFFF,
                          color2: 0xff687892,
                          onTap: () {
                            context.read<OtpCubit>().postOtpData(
                                widget.email,
                                widget.mobile,
                                otpContoller.text,
                                widget.createdCode.toString());


                          },
                          text: "Continue",
                        ),
                        SizedBox(height: context.blockSizeVertical*1,),

                      ],
                    ),
                  ),
                )
              ],
            ),

          ),
);
        }
      ),
    );
  }
}
