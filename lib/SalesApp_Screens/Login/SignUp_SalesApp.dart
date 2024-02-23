import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Cubit/SignUp_cubit/sign_up_cubit.dart';
import 'package:salesapp/Models/SignUp_Model/SignUp.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';


import 'OtpScreen.dart';
import 'Sign_In_Hilal.dart';

class SignUpHilal extends StatefulWidget {
  const SignUpHilal({Key? key}) : super(key: key);

  @override
  State<SignUpHilal> createState() => _SignUpHilalState();
}

class _SignUpHilalState extends State<SignUpHilal> {
  bool valuefirst = false;
  bool valuesecond = false;
  TextEditingController firstnameController=TextEditingController();
  TextEditingController genderController=TextEditingController();
  TextEditingController nationalityController=TextEditingController();
  TextEditingController lastnameController=TextEditingController();
  TextEditingController emailnameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
  TextEditingController mobileController=TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>SignUpCubit())
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<SignUpCubit,SignUpState>(
                  listener: (context,state){
                    // print("srtate of signup$state");
                    state.maybeWhen(
                        orElse: () {},
                        error: () {
                          context.showSnackBarError("error !");
                        },
                        loading: () {
                          context.showSnackBarNormal("Loading");
                        },
                        success: (data) {
                          // print("uuu");
                          // print("ttt${data.data1}");
                          // print(data.data2);
                          if (data.data1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                    OtpScreen(
                                        mobile:data.data2["mobile"],
                                        createdCode: data.data2["created_code"],
                                        email: data.data2["email"]
                                    ),
                                ));
                          } else {

                            context.showSnackBarError(data.data2);
                          }
                        });
                  })
            ],
            child: Scaffold(
              backgroundColor: const Color(0xff687892),
              body: Form(
                key: _formKey,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 250,top: 200),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sales App",style: TextStyle(fontSize: context.blockSizeHorizontal*2.5,fontWeight: FontWeight.w500,
                                color: const Color(0xffFFFFFF)
                            ),),
                            SizedBox(height: context.blockSizeVertical*2,),
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nSodales nunc odio feugiat id viverra.\nMi, posuere massa id tellus scelerisque eleifend.\nElit ornare tincidunt habitant euid quam semper facilisi congue.",
                              style: TextStyle(fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.normal,color: const Color(0xffFFFFFF)),),
                            SizedBox(height: context.blockSizeVertical*4,),
                            Container(color: Colors.black,height: context.blockSizeVertical*0.01,width: context.blockSizeHorizontal*33,)
                          ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(
                            height: context.blockSizeVertical*96,
                            width: context.blockSizeHorizontal*25,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: const Color(0xffFFFFFF),
                                boxShadow: [
                                  BoxShadow(

                                    blurRadius: context.blockSizeHorizontal*0.005,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: context.blockSizeVertical*2.5,),
                                Row(
                                  children: [
                                    SizedBox(width: context.blockSizeHorizontal*2.5,),
                                    Text("Sign Up",style: TextStyle(
                                        fontSize: context.blockSizeHorizontal*1.5,fontWeight: FontWeight.w800),),
                                  ],
                                ),
                                SizedBox(height: context.blockSizeVertical*2,),
                                EmailTextFields(text: "First Name",controller: firstnameController,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter a valid Name!';
                                    }
                                    return null;
                                  },),
                                SizedBox(height: context.blockSizeVertical*1,),
                                EmailTextFields(text: "Last Name",controller: lastnameController,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter a valid Name!';
                                    }
                                    return null;
                                  },),
                                SizedBox(height: context.blockSizeVertical*1,),
                                Row(
                                  children: [
                                    SizedBox(width: context.blockSizeHorizontal*2.5,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Gender",style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: context.blockSizeHorizontal * 1,
                                            color: const Color(0xff666666))),
                                        SizedBox(
                                          height: context.blockSizeVertical * 1,
                                        ),
                                        Container(
                                          height: context.blockSizeVertical * 5,
                                          width: context.blockSizeHorizontal * 9,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: context.blockSizeHorizontal * 0.01,
                                                  color: Colors.grey),
                                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: DropDown<String>(showUnderline: false,
                                              items: const ["M","F",],
                                              initialValue: "M",
                                              onChanged: (sa){
                                                genderController.text=sa.toString();
                                              },

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: context.blockSizeHorizontal*2,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Nationality",style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: context.blockSizeHorizontal * 1,
                                            color: const Color(0xff666666))),
                                        SizedBox(
                                          height: context.blockSizeVertical * 1,
                                        ),
                                        Container(
                                          height: context.blockSizeVertical * 5,
                                          width: context.blockSizeHorizontal * 9,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: context.blockSizeHorizontal * 0.01,
                                                  color: Colors.grey),
                                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: DropDown<String>(showUnderline: false,
                                              items: const ["IND","UAE","ARG","BZL","USA"],
                                              initialValue: "UAE",
                                              onChanged: (sa){
                                                nationalityController.text=sa.toString();
                                              },

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: context.blockSizeVertical*1,),
                                EmailTextFields(text: "Email",controller: emailnameController,
                                  validator: (value) {
                                    if (value.isEmpty ||
                                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")

                                            .hasMatch(value)) {
                                      return 'Enter a valid email!';
                                    }
                                    return null;
                                  },),
                                SizedBox(height: context.blockSizeVertical*1,),
                                EmailTextFields(text: "Mobile Number",controller: mobileController,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter a valid Mobile Number!';
                                    }
                                    return null;
                                  },),
                                SizedBox(height: context.blockSizeVertical*1,),
                                PasswordTextField(text: "Password",controller: passwordController,password: true,

                                ),
                                SizedBox(height: context.blockSizeVertical*1,),
                                PasswordTextField(text: "Confirm Password",controller: confirmpasswordController,password: true,
                                 ),
                                SizedBox(height: context.blockSizeVertical*1,),
                                ButtonsCommon(
                                  text: "Sign In",
                                  onTap: () {
                                    if(_formKey.currentState!.validate()){
                                      // context.showSnackBarSuccess("Sucess !");

                                    }
                                    SignUpData model=SignUpData(
                                        email: emailnameController.text,
                                        password: passwordController.text,
                                        mobile: mobileController.text,
                                        firstName: firstnameController.text,
                                        lastName: lastnameController.text,
                                        country: nationalityController.text,
                                        gender: genderController.text,
                                        acessSite: "salesapp"


                                    );
                                    context.read<SignUpCubit>().postSignUpData(model);
                                    print("ff$model");
                                  }, color1: 0xffFFFFFF,color2: 0xffE9E9E9,

                                ),
                                // SizedBox(height: context.blockSizeVertical*1,),
                                // Row(
                                //   children: [
                                //     SizedBox(width: context.blockSizeHorizontal*2.35,),
                                //     Transform.scale(
                                //       scale: context.blockSizeHorizontal*0.05,
                                //       child: Checkbox(
                                //         checkColor: Colors.white,
                                //         activeColor: const Color(0xff24203F),
                                //         value: valuefirst,
                                //         onChanged: (value){
                                //           setState(() {
                                //             valuefirst = !valuefirst;
                                //           });
                                //         },
                                //       ),
                                //     ),
                                //     SizedBox(width: context.blockSizeHorizontal*0.1,),
                                //     Text("Accept Privacy Policy",style: TextStyle(fontSize: context.blockSizeHorizontal*0.9),),
                                //
                                //   ],
                                // ),
                                // Row(
                                //   children: [
                                //     SizedBox(width: context.blockSizeHorizontal*2.35,),
                                //     Transform.scale(
                                //       scale: context.blockSizeHorizontal*0.05,
                                //       child: Checkbox(
                                //         checkColor: Colors.white,
                                //         activeColor: const Color(0xff24203F),
                                //         value: valuesecond,
                                //         onChanged: (value){
                                //           setState(() {
                                //             valuesecond = !valuesecond;
                                //           });
                                //         },
                                //       ),
                                //     ),
                                //     SizedBox(width: context.blockSizeHorizontal*0.1,),
                                //     Text("Accept Terms And Conditions",style: TextStyle(fontSize: context.blockSizeHorizontal*0.9),),
                                //
                                //   ],
                                // ),
                                SizedBox(height: context.blockSizeVertical*0.5,),
                                Row(
                                  children: [
                                    SizedBox(width: context.blockSizeHorizontal*3,),
                                    Text("Already have an account? ",style: TextStyle(fontSize: context.blockSizeHorizontal*0.9),),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) =>
                                                const SignInHilalWeb()));
                                      },
                                      child: Text("Sign In",style: TextStyle(fontSize: context.blockSizeHorizontal*1,fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.underline,),),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ),
          );
        }
      ),
    );
  }
}
