import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/admin_user.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/admin_user/admin_user_create_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/delete/employee_delete_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/admin/employee_list/employee_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  List<UserEmployeeListModel>employeeList=[];
  late AutoScrollController recieveController;
  Map<int, TableColumnWidth>? widths={

    0: const FlexColumnWidth(3.5),
    1: const FlexColumnWidth(3),
    2: const FlexColumnWidth(3),
    3: const FlexColumnWidth(3),
    4: const FlexColumnWidth(3),
    5: const FlexColumnWidth(3),
    6: const FlexColumnWidth(3),
    7: const FlexColumnWidth(1.5),
    8: const FlexColumnWidth(2),

  };
  @override
  void initState() {
    context.read<EmployeeListCubit>().adminEmployeeList();
    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Builder(
      builder: (context) {
        return BlocProvider(
  create: (context) => EmployeeDeleteCubit(),
  child: MultiBlocListener(
  listeners: [
        BlocListener<EmployeeDeleteCubit, EmployeeDeleteState>(
          listener: (context, state) {
            state.maybeWhen(orElse: (){},success: (data){
              if(data.data1){
                context.read<EmployeeListCubit>().adminEmployeeList();
                context.showSnackBarSuccess(data
                    .data2);
              }
              else{
                showDailogPopUp(
                    context,
                    FailiurePopup(
                      content: Variable.errorMessege,
                    ));
              }
            },);
            // TODO: implement listener
          },
        ),

  ],
  child: BlocConsumer<EmployeeListCubit, EmployeeListState>(
  listener: (context, state) {
        state.maybeWhen(orElse: (){},
        success: (data){
          employeeList=data.data;


        });
        // TODO: implement listener
  },
  builder: (context, state) {
        return Expanded(
          child: Container(
            child: Row(
              children: [
               Flexible(child: Container(
                 child:         CustomScrollBar(
                   controller: recieveController,
                   childs: SingleChildScrollView(
                     controller:recieveController ,
                             scrollDirection: Axis.horizontal,
                             physics: ScrollPhysics(),
                             child: Container(
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(12),
                                   color: Colors.white
                               ),
                               child:
                               Column(
                                 children:[
                                   Container(
                                     color: Colors.white,
                                     width: context.blockSizeHorizontal * 90,
                                     child:
                                     customTableTwo(
                                       border: const TableBorder(
                                         horizontalInside:
                                         BorderSide(width: 0.2, color: Colors.black45,
                                             style:
                                             BorderStyle.solid),
                                       ),
                                       tableWidth: .5,
                                       widths: widths,
                                       childrens: [
                                         TableRow(

                                             children: [

                                               tableHeadtextTwo(
                                                   'Full Name',
                                                   color: Color(0xffF8F9FA),
                                                   align: Alignment.topLeft,
                                                   padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                                   height: context.blockSizeVertical*5.6,

                                                   textStyle: TextStyle(fontSize:context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                               ),
                                               tableHeadtextTwo(
                                                   'Email',
                                                   align: Alignment.topLeft,
                                                   color: Color(0xffF8F9FA),
                                                   height: context.blockSizeVertical*5.6,
                                                   padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                                   textStyle: TextStyle(fontSize:context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                               ),
                                               tableHeadtextTwo(
                                                   'Phone Number',
                                                   color: Color(0xffF8F9FA),
                                                   align: Alignment.topLeft,
                                                   height: context.blockSizeVertical*5.6,
                                                   padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                                   textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                               ),
                                               tableHeadtextTwo(
                                                   'Department',
                                                   color: Color(0xffF8F9FA),
                                                   align: Alignment.topLeft,
                                                   height: context.blockSizeVertical*5.6,
                                                   // padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                                   textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                               ),
                                               tableHeadtextTwo(
                                                   'Designation',
                                                   color: Color(0xffF8F9FA),
                                                   height: context.blockSizeVertical*5.6,
                                                   // padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                                   align: Alignment.topLeft,
                                                   textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                               ), tableHeadtextTwo(
                                                   'Role',
                                                   align: Alignment.topLeft,

                                                   color: Color(0xffF8F9FA),
                                                   height: context.blockSizeVertical*5.6,
                                                   // padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                                   textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                                 // size: 13,
                                               ),
                                               // tableHeadtextTwo(
                                               //     '',
                                               //     align: Alignment.topLeft,
                                               //     // padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                               //
                                               //     color: Color(0xffF8F9FA),
                                               //     height: 42,
                                               //     textStyle: TextStyle(fontSize: 13,color:Colors.black,fontWeight: FontWeight.bold )
                                               //   // size: 13,
                                               // ),





                                             ]),


                                       ],

                                     ),
                                   ),
                                   SizedBox(height: 3,),

                                   BlocBuilder<EmployeeListCubit, EmployeeListState>(
                   builder: (context, state) {
                         return state.maybeWhen(orElse: (){return customCupertinoLoading();},loading: (){return customCupertinoLoading();},
                             success: (data){
                             return  employeeList.isEmpty?Expanded(
                               child: Container(
                                   padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1.5,),
                                   margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                                   // height: context.blockSizeVertical*60,
                                   color: Colors.white,
                                   child: EmptyDataDisplay()),
                             ): Container(
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(12),
                                   color: Colors.white
                               ),
                               width: context.blockSizeHorizontal * 90,
                               // height: context.blockSizeVertical*60,
                               child: SingleChildScrollView(
                                 child: Container(
                                   padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5,),
                                   color: Colors.white,
                                   child: customTableTwo(
                                     border: const TableBorder(
                                       horizontalInside:      BorderSide(width: 0.2, color: Colors.black45,
                                           style:
                                           BorderStyle.solid),
                                    bottom:      BorderSide(width: 0.2, color: Colors.black45,
                                        style:
                                        BorderStyle.solid),

                                     ),
                                     tableWidth: .5,
                                     widths: widths,
                                     childrens: [

                                       for(var i=0;i<employeeList!.length;i++)

                                         TableRow(
                                             children: [



                                               // TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(invoiceList[i].orderdDate.toString().split("T")[0],(){},align: Alignment.topLeft)),
                                               TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                   child:
                                                   textPaddingAvatar(employeeList[i].fname?.toString().toTitleCase()??"",(){

                                                     showDailogPopUp(
                                                         context,
                                                         AdminCreationUser(
                                                           isPatch: true,
                                                           isRadOnly: false,
                                                           empCode: employeeList[i].employeeCode??"",
                                                         ));
                                                   },align: Alignment.topLeft,image: employeeList[i].profilePic??"",fontWeight: FontWeight.bold,textExistingWidth: context.blockSizeHorizontal*13,fontSize: context.blockSizeHorizontal*.9,)),
                                               TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(employeeList[i].primaryMail?.toString().toTitleCase()??"",(){},align: Alignment.topLeft,isNoTap: true,fontSize: context.blockSizeHorizontal*.9,textExistingWidth: context.blockSizeHorizontal*12)),

                                               TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(employeeList[i].primaryMobile?.toString().toTitleCase()??"",(){},align: Alignment.topLeft,isNoTap: true,fontSize: context.blockSizeHorizontal*.9,textExistingWidth: context.blockSizeHorizontal*12)),
                                               TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                   child: textPaddingTwo(employeeList[i].lname?.toString().toTitleCase()??"",(){},align: Alignment.topLeft,isNoTap: true,textExistingWidth: context.blockSizeHorizontal*12)),
                                               TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                   child: textPaddingTwo(employeeList[i].designation?.toString().toTitleCase()??"",(){},align: Alignment.topLeft ,isNoTap: true,textExistingWidth: context.blockSizeHorizontal*12)),
                                               TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                   child: textPaddingTwo(employeeList[i].roleName?.toString().toTitleCase()??"",(){},align: Alignment.topLeft ,isNoTap: true,height: context.blockSizeVertical*5.5,textExistingWidth: context.blockSizeHorizontal*12)),
                                               // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                               //     child: Container(
                                               //       alignment: Alignment.topRight,
                                               //       child: AdminTableDotIcon(
                                               //         valueList: [PopupMenuClass(value: '1',text: "Edit"),PopupMenuClass(value: '2',text:"Change Password"),PopupMenuClass(value: '3',text:"Delete"),],
                                               //         onTap: (val){
                                               //         if(val=="1"){
                                               //           showDailogPopUp(
                                               //               context,
                                               //               AdminCreationUser(
                                               //                 isPatch: true,
                                               //                 isRadOnly: false,
                                               //                 empCode: employeeList[i].employeeCode??"",
                                               //               ));
                                               //
                                               //         }  if(val=="2"){
                                               //           showDailogPopUp(
                                               //               context,
                                               //               AdminChangePassword(
                                               //                 userName: employeeList[i].userName??"",
                                               //
                                               //               ));
                                               //
                                               //         }
                                               //
                                               //         if(val=="3"){
                                               //           showDailogPopUp(
                                               //               context,
                                               //               //     AdminCreationUser()
                                               //               LogoutPopup(
                                               //                 message: "Are you sure you want to delete the user?",
                                               //                 // table:table,
                                               //                 // clear:clear(),
                                               //
                                               //                 onPressed:()  {
                                               //
                                               //                   context.read<EmployeeDeleteCubit>().deleteAdminUser(employeeList[i].employeeCode??"");
                                               //                   Navigator.pop(context);},
                                               //
                                               //
                                               //
                                               //               ));
                                               //
                                               //         }
                                               //
                                               //
                                               //       },),
                                               //     )),





                                             ]
                                         ),

                                     ],
                                   ),
                                 ),
                               ),
                             );
                             }
                         );

                   },)



                                 ] ,
                               ),
                             ),
                           ),
                 ),
               ),flex: 14,),
               Flexible(child: Container(child:
               Column(
                 children:[
                   Container(
                     color: Colors.white,
                     // width: context.blockSizeHorizontal * 90,
                     child:
                     customTableTwo(
                       border: const TableBorder(

                         horizontalInside:
                         BorderSide(width: 0.2, color: Colors.black45,
                             style:
                             BorderStyle.solid),
                       ),
                       tableWidth: .5,
                       widths: {
                         0: const FlexColumnWidth(3),


                       },
                       childrens: [
                         TableRow(
                             children: [
                               tableHeadtextTwo(
                                   'Actions',
                                   color: Color(0xffF8F9FA),
                                   align: Alignment.center,
                                   // padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                 height: context.blockSizeVertical*5.6,


                                   textStyle: TextStyle(fontSize:context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                               ),
                             ]),


                       ],

                     ),
                   ),
                   SizedBox(height: 3,),

                   BlocBuilder<EmployeeListCubit, EmployeeListState>(
                     builder: (context, state) {
                       return state.maybeWhen(orElse: (){return Container();},loading: (){return Container();},
                           success: (data){
                             return  employeeList.isEmpty?Container(
                                 ): Container(
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(12),
                                   color: Colors.white
                               ),
                               width: context.blockSizeHorizontal * 90,
                               // height: context.blockSizeVertical*60,
                               child: SingleChildScrollView(
                                 child: Container(
                                   // padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1.5,),
                                   color: Colors.white,
                                   child: customTableTwo(
                                     border:  TableBorder(
                                       left:     BorderSide(width: 0.1, color: Colors.black45.withOpacity(.5),
                                           style:
                                           BorderStyle.solid),


                                       bottom:      BorderSide(width: 0.2, color: Colors.black45,
                                           style:
                                           BorderStyle.solid),
                                       horizontalInside:
                                       BorderSide(width: 0.2, color: Colors.black45,
                                           style:
                                           BorderStyle.solid),
                                     ),
                                     tableWidth: .5,
                                     widths: {

                                       0: const FlexColumnWidth(3),


                                     },
                                     childrens: [

                                       for(var i=0;i<employeeList!.length;i++)

                                         TableRow(
                                             children: [


                                               TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                   child: Container(
                                                     alignment: Alignment.center,
                                                     child: AdminTableDotIcon(
                                                       valueList: [PopupMenuClass(value: '1',text: "Edit"),PopupMenuClass(value: '2',text:"Change Password"),PopupMenuClass(value: '3',text:"Delete"),],
                                                       onTap: (val){
                                                       if(val=="1"){
                                                         showDailogPopUp(
                                                             context,
                                                             AdminCreationUser(
                                                               isPatch: true,
                                                               isRadOnly: false,
                                                               empCode: employeeList[i].employeeCode??"",
                                                             ));

                                                       }  if(val=="2"){
                                                         showDailogPopUp(
                                                             context,
                                                             AdminChangePassword(
                                                               userName: employeeList[i].userName??"",

                                                             ));

                                                       }

                                                       if(val=="3"){
                                                         showDailogPopUp(
                                                             context,
                                                             //     AdminCreationUser()
                                                             LogoutPopup(
                                                               message: "Are you sure you want to delete the user?",
                                                               // table:table,
                                                               // clear:clear(),

                                                               onPressed:()  {

                                                                 context.read<EmployeeDeleteCubit>().deleteAdminUser(employeeList[i].employeeCode??"");
                                                                 // Navigator.pop(context);
                                                                 },



                                                             ));

                                                       }


                                                     },),
                                                   )),





                                             ]
                                         ),

                                     ],
                                   ),
                                 ),
                               ),
                             );
                           }
                       );

                     },)



                 ] ,
               ),)),
              ],
            ),
          )

        );
  },
),
),
);
      }
    );
  }
  void showMemberMenu(BuildContext ctx) async {
    await PopupMenuButton(

      itemBuilder: (ctx)=>[
        PopupMenuItem(
          value: 1,
          child: Text("ROHIT",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Colors.green),),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("REKHA", style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              color: Colors.green),),
        ),
        PopupMenuItem(
          value: 3,
          child: Text("DHRUV", style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              color: Colors.green),),
        ),
      ],
      elevation: 8.0,
    );
  }
}
