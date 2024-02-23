import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Callcenter_Screens/CallCenter_MainScreen.dart';
import 'package:salesapp/Callcenter_Screens/bloc/login_loading_bloc.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Channel_List_Cubit/channel_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Organisation_Create_Cubit/create_organisation_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/captcha_post/post_captcha_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/dashboard/inveontryslect/inventorylist_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/read_captcha/read_captch_cubit.dart';
import 'package:salesapp/Cubit/SignUp_cubit/sign_up_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Create_Channel/Create_Channel.dart';
import 'package:salesapp/Models/Call_Center_Model/Customer_Create_Model/Customer_Create.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/salesapp_Screens/MainScreenPage.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/shared_preference.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';



class SignInHilalWeb extends StatefulWidget {
  const SignInHilalWeb({Key? key}) : super(key: key);

  @override
  State<SignInHilalWeb> createState() => _SignInHilalWebState();
}

class _SignInHilalWebState extends State<SignInHilalWeb> with  TickerProviderStateMixin{
  bool valuefirst = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  TextEditingController usernameContoller=TextEditingController();
  TextEditingController passwordContoller=TextEditingController();
  TextEditingController codeContoller=TextEditingController();
  TextEditingController catchaTextContoller=TextEditingController();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<  InventoryListModel> inventoryList=[];
  Uint8List captchaImage = Uint8List.fromList([]);
  CaptchaReadModel captchareadModel=CaptchaReadModel();
  String captchaId="";
  bool isCaptchaSuccessed=false;
  bool isCaptchaFailed=false;
  int credentialErrorCount=0;
  @override
  void initState() {
    context.read<ReadCaptchCubit>().getCaptcha();
    // Initialize the AnimationController
    _controller = AnimationController(
      duration: Duration(seconds: 7), // Adjust the duration as needed
      vsync: this,
    )..repeat(reverse: true);
    Tween<double> _tween = Tween<double>(begin: 0.5, end: 0.0);
    _animation = _tween.animate(_controller);
    // Attach the Tween to the AnimationController

    super.initState();
  }
  @override
  void dispose() {
    // Dispose of the AnimationController when the widget is disposed
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider(create: (context)=>SignUpCubit()),
        BlocProvider(create: (context)=>ChannelListCubit()),
        BlocProvider(create: (context)=>InventorylistCubit()),
        BlocProvider(create: (context)=>PostCaptchaCubit()),
        BlocProvider(create: (context)=>LoginLoadingBloc()),
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<LoginLoadingBloc, LoginLoadingState>(
  builder: (context, LoadingState) {
    return MultiBlocListener(
            listeners: [
              BlocListener<ReadCaptchCubit, ReadCaptchState>(
                listener: (context, state) {
                  print("...stateeee.... $state");
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        context.showSnackBarError("Login error !");
                      },
                      loading: () {
                        context.showSnackBarNormal("Loading");
                      },
                      success: (data)  {
                       

                        if(data.data1){

                          captchareadModel=data.data2;
                          setState(() {
                            captchaImage=Base64Decoder().convert(captchareadModel.captchaImageBase64??"");
                            captchaId=captchareadModel.captchaId??"";
                          });

                        }

                        print(data);



                      }
                  );
                },
              ),
              BlocListener<PostCaptchaCubit, PostCaptchaState>(
                listener: (context, state) {
                  print("...stateeee.... $state");
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        context.showSnackBarError("Login error !");
                      },
                      loading: () {
                        context.showSnackBarNormal("Loading");
                      },
                      success: (data)  {
                        LoadingState.loading=false;
                        BlocProvider.of<LoginLoadingBloc>(context).add(LoginLoadingEvent());


                       if(data.data1){

                         setState(() {
                           isCaptchaSuccessed=true;
                           isCaptchaFailed=false;
                         });
                         var validate=        _formKey.currentState!.validate();
                       if(validate)  context.read<SignUpCubit>().postSignInData(usernameContoller.text,passwordContoller.text,codeContoller.text);
                       }
                       else{
                         // context.showSnackBarError(Variable.errorMessege);
                         setState(() {
                           isCaptchaSuccessed=false;
                           isCaptchaFailed=true;
                           context.read<ReadCaptchCubit>().getCaptcha();


                         });
                         catchaTextContoller.clear();
                       }



                      }
                  );
                },
              ),
              BlocListener<InventorylistCubit, InventorylistState>(
                listener: (context, state) {
                  print("...stateeee.... $state");
                  state.maybeWhen(
                      orElse: () {},
                      error: () {
                        context.showSnackBarError("Login error !");
                      },
                      loading: () {
                        context.showSnackBarNormal("Loading");
                      },
                      success: (data)  {
                        Variable.email;

                        inventoryList=data.data;


                        if(inventoryList.isNotEmpty==true){
                          setState(()   {


                            InventoryListModel model=InventoryListModel(
                                businessUnitCode: inventoryList[0]?.businessUnitCode??"",
                                name: inventoryList[0]?.name??""
                            );
                            Variable.invemail=inventoryList[0].address?.email??"";
                            Variable.invcontact=inventoryList[0].address?.contact?.primary??"";
                            LoadingState.loading=false;
                            BlocProvider.of<LoginLoadingBloc>(context).add(LoginLoadingEvent());
                            UserPreferences().saveInventoryList(inventoryList[0]);
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CallCenterMain()));




                            // final SharedPreferences prefs = await SharedPreferences.getInstance();
                            // prefs.setString("inventory", inventoryList![0].businessUnitCode.toString());
                            // prefs.setString("inventory_name", inventoryList![0].name.toString());
                          });

                        }

                        print("invennnnn"+Variable.inventory_ID);

                        print(data);



                      }
                  );
                },
              ),
              BlocListener<SignUpCubit, SignUpState>(
                  listener: (context,state){
                    print("stat$state");
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          context.showSnackBarError("Login error !");
                        },
                        loading: () {
                          context.showSnackBarNormal("Loading");
                        },
                        success: (data) async {
                          // context.showSnackBarSuccess("Login Successfully");
                          print(data.data2);
                          if (data.data1) {
                            LoadingState.loading=false;
                            BlocProvider.of<LoginLoadingBloc>(context).add(LoginLoadingEvent());
                            print("the logineddata");
                            print( data.data2);
                            final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                            sharedPreferences.setBool("isLoggedIn", true);
                            List<dynamic>roleList=data.data2['role'];
                           String userRole=roleList.contains("admin")?"previlliageExist":"";
                           Variable.isAdmin=userRole=="previlliageExist"?true:false;
                           //user admin check key
                            sharedPreferences.setString('previlliageExist', userRole).toString();
                            sharedPreferences.setString('token', data.data2["token"] ?? "").toString();
                            String? token = sharedPreferences.getString('token').toString();
                            sharedPreferences.setString('username', data.data2['fname']+" "+data.data2['lname'] ?? "").toString();
                            sharedPreferences.setString('EMPcode', data.data2['employee_code']).toString();
                            sharedPreferences.setInt('loginId', data.data2['login_id']);
                            sharedPreferences.setString('invId', data.data2['organization_code']).toString();
                            // sharedPreferences.setString('tax_id', data.data2['tax_number']);
                            String? inventoryId = sharedPreferences.getString('invId').toString();
                            sharedPreferences.setString('invName', data.data2['organization_type']).toString();
                            String? invName = sharedPreferences.getString('invName').toString();
                            sharedPreferences.setString('legal', data.data2['legal_entiry']??"null");
                            sharedPreferences.setString('taxNum', data.data2['tax_number']??"null");
                            String? leagalEntry = sharedPreferences.getString('legal').toString();
                            Variable.code=inventoryId;
                            Variable.type=invName;
                            Variable.profileName=data.data2['fname']+" "+data.data2['lname'];
                            Variable.legalEntity=data.data2['legal_entiry'];



                            context.read<InventorylistCubit>().getInventoryListRead(inventoryId??"");
                            context.showSnackBarSuccess("Login Successfully");


                          } else {
                            credentialErrorCount=credentialErrorCount+1;
                            print("credentialErrorCount$credentialErrorCount");
                            if(credentialErrorCount==2){
                              isCaptchaSuccessed=false;
                              catchaTextContoller.clear();

                              context.read<ReadCaptchCubit>().getCaptcha();
                              credentialErrorCount=0;


                            }
                            LoadingState.loading=false;
                            BlocProvider.of<LoginLoadingBloc>(context).add(LoginLoadingEvent());

                            context.showSnackBarError(Variable.errorMessege);
                          }
                        });
                  })
            ],
            child: Scaffold(
              backgroundColor: Color(0xff687892),
              body: Stack(
                children: [
                  Positioned(
                    bottom: MediaQuery.of(context).size.height/2,
                    child: RotationTransition(
                        turns: _animation,

                        child: _animatedContainer(
                          margin: EdgeInsets.only(
                              bottom: (1 - _animation.value) * MediaQuery.of(context).size.height,
                              left: (1 - _animation.value) * MediaQuery.of(context).size.width
                          ), // Adjust the range as needed
                        )

                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    child: AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return _animatedContainer(
                          margin: EdgeInsets.only(
                              bottom: (1 - _animation.value) * MediaQuery.of(context).size.height,
                              left: (1 - _animation.value) * MediaQuery.of(context).size.width
                          ), // Adjust the range as needed
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return _animatedContainer(

                          margin: EdgeInsets.only(
                              top: (1 - _animation.value) * MediaQuery.of(context).size.height,
                              left: (1 - _animation.value) * MediaQuery.of(context).size.width
                          ), // Adjust the range as needed
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return _animatedContainer(

                          margin: EdgeInsets.only(
                              top: (1 - _animation.value) * MediaQuery.of(context).size.height,
                              right: (1 - _animation.value) * MediaQuery.of(context).size.width
                          ), // Adjust the range as needed
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return _animatedContainer(

                          margin: EdgeInsets.only(
                              bottom: (1 - _animation.value) * MediaQuery.of(context).size.height,
                              right: (1 - _animation.value) * MediaQuery.of(context).size.width
                          ), // Adjust the range as needed
                        );
                      },
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 200,left: 200),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Call Center App",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*2.5,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                              SizedBox(height: context.blockSizeVertical*2,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Handle customer inquiries, support requests, and order-related issues.", style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.normal,color: Color(0xffFFFFFF)),),
                                  SizedBox(height: context.blockSizeVertical*0.5,),
                                  Text("It would enable the call center agents to",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.normal,color: Color(0xffFFFFFF))),
                                  SizedBox(height: context.blockSizeVertical*0.5,),
                                  Text("efficiently manage and resolve customer concerns over the phone.",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.normal,color: Color(0xffFFFFFF))),
                                  SizedBox(height: context.blockSizeVertical*0.5,),
                                  // Text("id quam semper facilisi congue.",style: GoogleFonts.roboto(fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.normal,color: Color(0xffFFFFFF))),
                                ],
                              ),
                              SizedBox(height: context.blockSizeVertical*4,),
                              // Container(color: Colors.black,height: context.blockSizeVertical*0.01,width: context.blockSizeHorizontal*33,)
                    ]
                          ),
                        ),
                        SizedBox(width: context.blockSizeHorizontal*5,),
                        SingleChildScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                // height: context.blockSizeVertical * 70,
                                width: context.blockSizeHorizontal * 28,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.1), //color of shadow
                                          spreadRadius: 5, //spread radius
                                          blurRadius: 7, // blur radius
                                          offset: Offset(0, 2)
                                      ),


                                    ]
                                ),
                                child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: context.blockSizeVertical*5,),
                                    Row(
                                      children: [
                                        SizedBox(width: context.blockSizeHorizontal*2.5,),
                                        Text("Sign in",style: GoogleFonts.roboto(
                                            fontSize: context.blockSizeHorizontal*1.5,fontWeight: FontWeight.w800),),
                                      ],
                                    ),
                                    SizedBox(height: context.blockSizeVertical*3,),
                                    EmailTextFields(text: "Email Id",controller: usernameContoller,
                                      validator: (value) {
                                      if(isCaptchaSuccessed)
                                        if (value.isEmpty
                                            // ||
                                            // !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
                                            // )
                                            //     .hasMatch(value)
                                        ) {
                                          return 'Enter a valid email!';
                                        }
                                        return null;
                                      },),
                                    SizedBox(height: context.blockSizeVertical*1.5,),
                                    PasswordTextField(text: "Password", controller: passwordContoller,password: true,
                                      validator: (value) {
                                        if(isCaptchaSuccessed)
                                        if (value.isEmpty) {
                                          return 'Enter a valid password!';
                                        }
                                        return null;
                                      },
                                    ),

                                    SizedBox(height: context.blockSizeVertical*1.5,),
                                    EmailTextFields(text: "Employee Code", controller: codeContoller,validator: (value){
                                      if(isCaptchaSuccessed)
                                      if(value.isEmpty){
                                        return "Enter a valid Employee Code!";
                                      }
                                    },),
                                    SizedBox(height: context.blockSizeVertical*1.5,),
                                    captchaField(
                                      isCAptchFailed:  isCaptchaFailed,
                                      isSuffixIcon:isCaptchaSuccessed ,
                                      onRefreshTap: (){
                                        setState(() {
                                          context.read<ReadCaptchCubit>().getCaptcha();
                                          isCaptchaSuccessed=false;
                                              catchaTextContoller.clear();
                                          isCaptchaSuccessed=false;


                                        });


                                      },
                                      uintListt: captchaImage,
                                      text: "Enter Captcha", controller: catchaTextContoller,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Captcha is required';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: context.blockSizeVertical*4,),
                                    ButtonsCommon(
                                      isLoading: LoadingState.loading ,
                                      text: "Sign In",
                                      onTap: () {
                                var validate=        _formKey.currentState!.validate();



                                 if(validate)
                                   {
                                     LoadingState.loading=true;
                                     BlocProvider.of<LoginLoadingBloc>(context).add(LoginLoadingEvent());
                                     isCaptchaSuccessed?
                                     context.read<SignUpCubit>().postSignInData(usernameContoller.text,passwordContoller.text,codeContoller.text):

                                     context.read<PostCaptchaCubit>().postCaptcha(captchaId, catchaTextContoller.text);
                                   }
                                      },
                                      color2: 0xff687892,
                                      color1: 0xffFFFFFF,
                                    ),
                                    SizedBox(height: context.blockSizeVertical*1,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: context.blockSizeHorizontal*9),
                                        Transform.scale(
                                          scale: context.blockSizeHorizontal*0.05,
                                          child: Checkbox(
                                            checkColor: Colors.white,
                                            activeColor: Color(0xff24203F),
                                            value: this.valuefirst,
                                            onChanged: (value){
                                              setState(() {
                                                valuefirst = !valuefirst;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(width: context.blockSizeHorizontal*0.1,),
                                        Text("Remember me",style: TextStyle(fontSize: context.blockSizeHorizontal*0.9),),
                                        Spacer(),
                                        // Text("Need help?",style: TextStyle(fontSize: context.blockSizeHorizontal*0.9),),

                                      ],
                                    ),
                                    // SizedBox(height: context.blockSizeHorizontal*1,),
                                    // Row(
                                    //   children: [
                                    //     SizedBox(width: context.blockSizeHorizontal*2.5,),
                                    //     Text("Don't have an account? ",style: TextStyle(fontSize: context.blockSizeHorizontal*0.9),),
                                    //     InkWell(onTap: (){
                                    //       Navigator.pushNamed(
                                    //           context,'/signup');
                                    //     },
                                    //       child: Text("Sign up",style: TextStyle(fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.w700,
                                    //         decoration: TextDecoration.underline,),),
                                    //     )
                                    //   ],
                                    // )
                                    SizedBox(height: context.blockSizeVertical*5,),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),

            ),
          );
  },
);
        }
      ),
    );
  }
}
Widget _animatedContainer({required EdgeInsetsGeometry margin}){
  return Container(
      width: 130.0,
      height: 130.0,decoration: BoxDecoration(
    shape: BoxShape.circle,
    color:  Colors.grey.withOpacity(.1),
  ),

  margin: margin,);

}
