import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/order/order_model.dart';
import 'package:salesapp/Cubit/userManageMentList/user_manage_ment_list_cubit.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../../Cubit/Call_Center_Cubit/User_Management_Cubit/user_management_cubit.dart';
import '../../Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import '../../Widgets/commonutils.dart';
import '../../custom_table/costumtable2.dart';
import '../dashboard/screens/popUps/PopUp2.dart';

class UserTable extends StatefulWidget {
  const UserTable({ required Key? key}) : super(key: key);

  @override
  State<UserTable> createState() => UserTableState();
}

class UserTableState extends State<UserTable> {
  List<CustomerList>customer=[];
  String address="";
  int selectedInex=-1;
  TextEditingController search =TextEditingController();
  final GlobalKey<tableCountPaginationState> _paginationState = GlobalKey<tableCountPaginationState>();
  Map<int, TableColumnWidth>? widths={


      0: const FlexColumnWidth(2),
      1: const FlexColumnWidth(3),
      2: const FlexColumnWidth(2),
      3: const FlexColumnWidth(2),
      4: const FlexColumnWidth(3),
      5: const FlexColumnWidth(4),
      6: const FlexColumnWidth(2),


  };
  bool selected=false;
  var paginated;
  int totalCount=0;
  int totalNumbers=0;
  bool   isCallPaginated=false;
  List<int>   displayPaginatedList=[];
  bool isLoading=false;
  paginatedCheck(){
    displayPaginatedList.clear();
    totalCount=0;
    setState(() {
    });

    if( paginated.nextPageUrl != null){
      totalNumbers=int.tryParse(paginated.count??0)!;


      totalCount=(int.tryParse(paginated.count??1)!/(customer.length)).ceil();

      isCallPaginated=true;
      if(totalCount<6){
        for(var i=1;i<=totalCount;i++){
          displayPaginatedList.add(i);
        }
      }
      else{
        for(var i=1;i<=6;i++){
          displayPaginatedList.add(i);
        }
      }



      setState(() {
      });

    }

  }
  pagintedCountReset(){

    setState(() {
      _paginationState.currentState?.selectedIndex=0;
    });
  }
  Future<void>paginatedApiCalling(int val)async{
    setState(() {

      isLoading=true;
    });

   await Future.delayed(Duration(milliseconds: 150));
    context.read<UserManageMentListCubit>().nextslotSectionPageList(val);
    setState(() {
      isLoading=false;
    });

  }

refresh(){
    setState(() {

    });
}


  void ontapFuncRow(int i){
    // context.read<CustomerListCubit>().g();
    selected=true;
    selectedInex=i;

    context
        .read<UserManagementCubit>()
        .getSearchUserManage(customer[i].customerUserCode??"");
    setState((){
      for (int index = 0; index < customer.length; index++) {
        customer[index] = customer[index].copyWith(isLoading: i==index);
      }
    });
    showDailogPopUp(
      context,
      SecondPopUp(patch: true,),
    );
  }


  Future<void> navigationFunc()async{
    Future.delayed(Duration(seconds: 5));
    customer[selectedInex]=customer[selectedInex].copyWith(isLoading: false);
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
  listeners: [
    BlocListener<UserManageMentListCubit, UserManageMentListState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read User");
            },
            success: (data) async {


                customer.clear();
                paginated=data;
                customer=data.data;

              refresh();

                if(  isCallPaginated==false)  paginatedCheck();


setState(() {

});
            });

      },
),
    BlocListener<UserManagementCubit, UserManagementState>(
      listener: (context, state) {

        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read User");
            },
            success: (data) async {

           if(   selected!=true){
             customer=data;

             if(  isCallPaginated==false)
               paginatedCheck();
           }

           navigationFunc();
              print("last$customer");
              setState(() {

              });

            });
      },
    ),
  ],
  child: Builder(
          builder: (context) {
            return
              Column(

                children: [
                  SizedBox(height: context.blockSizeVertical*1,),
                  Padding(
                    padding:  EdgeInsets.only(left:    context.blockSizeHorizontal*2,),
                    child: Container(
                      alignment: Alignment.topRight,
                      // height: context.blockSizeVertical*40,

                      // color: Colors.yellow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [

                              Container(
                                color: Color(0xffE1E7ED),
                                width: context.blockSizeHorizontal * 90,
                                child: Container(
                                  color: Colors.white,
                                  child: customTableTwo(
                                    border: const TableBorder(
                                      verticalInside: BorderSide(
                                          width: 0.5,
                                          color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      horizontalInside:
                                      BorderSide(width: 0.2, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      top: BorderSide(width: 0.5, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      right: BorderSide(width: 0.5, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      left: BorderSide(width: 0.5, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      bottom: BorderSide(width: 0.5, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                    ),
                                    tableWidth: .5,
                                    widths: widths,
                                    childrens: [
                                      TableRow(

                                          children: [

                                            tableHeadtextTwo(
                                              'Customer ID',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Name',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Phone Number',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Created Date',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Email Id',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Delivery Address',
                                              // padding:
                                              // const EdgeInsets.all(13),
                                              height: 42,
                                              size: 13,
                                            ),

                                            tableHeadtextTwo(
                                              'Action',
                                              // padding:
                                              // const EdgeInsets.all(13),
                                              height: 42,
                                              size: 13,
                                            ),





                                          ]),


                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

              isLoading==true? Container(
            // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
            height: context.blockSizeVertical*57,
            width: context.blockSizeHorizontal * 90,

            child: listcustomCupertinoLoading(context)):
              BlocBuilder<UserManageMentListCubit, UserManageMentListState>(
  builder: (context, state) {
    return state.maybeWhen(orElse: (){
      return Container(
      // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
          height: context.blockSizeVertical*57,
        width: context.blockSizeHorizontal * 90,
        color: Colors.white,
        child: listcustomCupertinoLoading(context)); },
        error: (){
          return Container(
            // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
              height: context.blockSizeVertical*57,
              width: context.blockSizeHorizontal * 90,
              color: Colors.white,
              child: listcustomCupertinoLoading(context));
        },
      loading: (){
      return Container(
        // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
          height: context.blockSizeVertical*57,
          width: context.blockSizeHorizontal * 90,
          color: Colors.white,
          child: listcustomCupertinoLoading(context));
      },
      success: (data){
      return  customer.isEmpty? Container(
          margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
          height:totalCount==0?     context.blockSizeVertical*57: context.blockSizeVertical*57,
          color: Colors.white,
          child: EmptyDataDisplay()):
      Container(
        color: Color(0xffE1E7ED),
        width: context.blockSizeHorizontal * 90,
        height: context.blockSizeVertical*57,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: customTableTwo(
              border: const TableBorder(
                verticalInside: BorderSide(
                    width: 0.5,
                    color: Colors.black45,
                    style:
                    BorderStyle.solid),
                horizontalInside:
                BorderSide(width: 0.2, color: Colors.black45,
                    style:
                    BorderStyle.solid),
                top: BorderSide(width: 0.5, color: Colors.black45,
                    style:
                    BorderStyle.solid),
                right: BorderSide(width: 0.5, color: Colors.black45,
                    style:
                    BorderStyle.solid),
                left: BorderSide(width: 0.5, color: Colors.black45,
                    style:
                    BorderStyle.solid),
                bottom: BorderSide(width: 0.5, color: Colors.black45,
                    style:
                    BorderStyle.solid),
              ),
              tableWidth: .5,
              widths: widths,

              childrens: [

                for(var i=0;i<customer.length;i++)

                  TableRow(
                      children: [

                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            child: textPaddingTwo(customer[i].customerUserCode??"",(){
                              ontapFuncRow(i);
                            },align: Alignment.topLeft)),
                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            child: textPaddingTwo(customer[i].customerName.toString().toTitleCase()??"",(){
                              ontapFuncRow(i);
                            },align: Alignment.topLeft)),
                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            child: textPaddingTwo(customer[i].mobile??"",(){
                              ontapFuncRow(i);
                            },align: Alignment.topLeft)),
                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            child: textPaddingTwo(customer[i].createdDate??"",(){
                              ontapFuncRow(i);
                            },align: Alignment.topLeft)),
                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            child: textPaddingTwo(customer[i].email??"",(){
                              ontapFuncRow(i);
                            },align: Alignment.topLeft)),
                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            child:
                            textPaddingTwo(customer[i].customerMeta==null ?"":address=(
                                (customer[i].customerMeta?.area?.isEmpty==true ||customer[i].customerMeta?.area==null?"":  "${customer[i].customerMeta?.area??""}, ")+
                                    (   customer[i].customerMeta?.street?.isEmpty==true ||customer[i].customerMeta?.street==null?"":      "${customer[i].customerMeta?.street??""}, ")+
                                (customer[i].customerMeta?.city?.isEmpty==true||customer[i].customerMeta?.city==null?"": "${customer[i].customerMeta?.city??""}, ")+
                                (customer[i].customerMeta?.landmark?.isEmpty==true||customer[i].customerMeta?.landmark==null?"":"${customer[i].customerMeta?.landmark??""}"??"")),
                                    (){
                                      ontapFuncRow(i);
                                    },align: Alignment.topLeft)),

                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // InkWell(onTap: (){
                                //   // context.read<CustomerListCubit>().g();
                                //   context
                                //       .read<UserManagementCubit>()
                                //       .getSearchUserManage(customer[i].customerUserCode??"");
                                //   setState((){});
                                //   showDailogPopUp(
                                //     context,
                                //     SecondPopUp(patch: true,),
                                //   );
                                // },
                                //     child: CircleAvatar(backgroundColor: Color(0xff66687B),minRadius: context.blockSizeHorizontal*0.9,
                                //         child: Icon(Icons.edit,color: Color(0xff7486A2),))),


                                InkWell(onTap: (){
                                  // context.read<CustomerListCubit>().g();
                                  ontapFuncRow(i);
                                },
                                  child:
                                  CircleAvatar(
                                    backgroundColor: Color(0xff66687B).withOpacity(.2),
                                    minRadius: context.blockSizeHorizontal*1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Center(
                                        child:customer[i].isLoading==true?customCircularLoading(): Container(
                                            height: context.blockSizeVertical*2,

                                            child:Icon(Icons.edit,color: Color(0xff7486A2),size:context.blockSizeVertical*2 ,)),
                                      ),

                                      // backgroundImage: AssetImage("image/bg.jpg"),
                                      minRadius: context.blockSizeHorizontal*0.9,
                                    ),
                                  ),),
                                SizedBox(width: 6,),
                                InkWell(onTap: (){
                                  // context.read<CustomerListCubit>().g();
                                  setState((){});
                                  showDailogPopUp(
                                    context,
                                    CalanderPopUp(customeruserCode: customer[i].customerUserCode??"",),
                                  );
                                },
                                  child:
                                  CircleAvatar(
                                    backgroundColor: Color(0xff66687B).withOpacity(.2),
                                    minRadius: context.blockSizeHorizontal*1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Center(
                                        child: Container(
                                            height: context.blockSizeVertical*2,

                                            child: Image.asset("asset_images/calenderIcon.png")),
                                      ),

                                      // backgroundImage: AssetImage("image/bg.jpg"),
                                      minRadius: context.blockSizeHorizontal*0.9,
                                    ),
                                  ),),

                              ],
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

  },),



                  if(totalCount>1)
            tableCountPagination(
              key: _paginationState,
              totalCountText: "User",
              totalCount: totalNumbers,
                displayList: displayPaginatedList,
                count: totalCount,
                reset:     () =>
                    context.read<UserManageMentListCubit>().refresh(),
                back: paginated.previousUrl == null
                    ? null
                    : () {
                  context
                      .read<UserManageMentListCubit>()
                      .previuosslotSectionPageList();
                },
                next:(int val){


                  paginatedApiCalling(val);
                  // context.read<UserManageMentListCubit>().nextslotSectionPageList(val);

                }
            )

                        ],
                      ),

                    ),
                  )
                ],
              );
          }
      ),
);
  }
}



class RecentUserTable extends StatefulWidget {
  const RecentUserTable({ required Key? key}) : super(key: key);

  @override
  State<RecentUserTable> createState() => RecentUserTableState();
}

class RecentUserTableState extends State<RecentUserTable> {
  List<CustomerList>customer=[];
  TextEditingController search =TextEditingController();
  bool selected=false;
 int selectedInex=-1;
  String address="";




  void ontapFuncRow(int i){
    // context.read<CustomerListCubit>().g();
    selected=true;
    selectedInex=i;

    context.read<UserManagementCubit>().getSearchUserManage(customer[i].customerUserCode??"");


    setState((){
      for (int index = 0; index < customer.length; index++) {
        customer[index] = customer[index].copyWith(isLoading: i==index);
      }
    });
    showDailogPopUp(
      context,
      SecondPopUp(patch: true,),
    );
  }
Future<void> navigationFunc()async{
    Future.delayed(Duration(seconds: 5));
    customer[selectedInex]=customer[selectedInex].copyWith(isLoading: false);
}

  Map<int, TableColumnWidth>? widths={


    0: const FlexColumnWidth(2),
    1: const FlexColumnWidth(3),
    2: const FlexColumnWidth(2),
    3: const FlexColumnWidth(2),
    4: const FlexColumnWidth(3),
    5: const FlexColumnWidth(4),
    6: const FlexColumnWidth(2),


  };

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
  listeners: [
    BlocListener<UserManageMentListCubit, UserManageMentListState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read User");
            },
            success: (data) async {
              setState(() {
                customer=data.data;
              });

            });

      },
),
    BlocListener<UserManagementCubit, UserManagementState>(
      listener: (context, state) {

        state.maybeWhen(
            orElse: () {},
            error: () {
              print("error..read User");
            },
            success: (data) async {
           if(   selected!=true){
             customer=data;
           }
           navigationFunc();

              print("last$customer");
              setState(() {

              });

            });
      },
    ),
  ],
  child: Builder(
          builder: (context) {
            return
              Column(
                children: [
                  SizedBox(height: context.blockSizeVertical*1,),
                  Padding(
                    padding:  EdgeInsets.only(left:    context.blockSizeHorizontal*2,),
                    child: Container(
                      alignment: Alignment.topRight,
                      // height: context.blockSizeVertical*40,

                      // color: Colors.yellow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [

                              Container(
                                color: Color(0xffE1E7ED),
                                width: context.blockSizeHorizontal * 90,
                                child: Container(
                                  color: Colors.white,
                                  child: customTableTwo(
                                    border: const TableBorder(
                                      verticalInside: BorderSide(
                                          width: 0.5,
                                          color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      horizontalInside:
                                      BorderSide(width: 0.2, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      top: BorderSide(width: 0.5, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      right: BorderSide(width: 0.5, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      left: BorderSide(width: 0.5, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                      bottom: BorderSide(width: 0.5, color: Colors.black45,
                                          style:
                                          BorderStyle.solid),
                                    ),
                                    tableWidth: .5,
                                    widths:widths,
                                    childrens: [
                                      TableRow(

                                          children: [

                                            tableHeadtextTwo(
                                              'Customer ID',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Name',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Phone Number',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Created Date',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Email Id',
                                              // padding:
                                              // const EdgeInsets.all(15),
                                              height: 42,
                                              size: 13,
                                            ),
                                            tableHeadtextTwo(
                                              'Delivery Address',
                                              // padding:
                                              // const EdgeInsets.all(13),
                                              height: 42,
                                              size: 13,
                                            ),

                                            tableHeadtextTwo(
                                              'Action',
                                              // padding:
                                              // const EdgeInsets.all(13),
                                              height: 42,
                                              size: 13,
                                            ),





                                          ]),


                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          customer.isEmpty?
                          Container(
                              height: context.blockSizeVertical*60,
                              margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                              color: Colors.white,
                              child: EmptyDataDisplay()):
                          Container(
                            color: Color(0xffE1E7ED),
                            width: context.blockSizeHorizontal * 90,
                            height: context.blockSizeVertical*64,
                            child: SingleChildScrollView(
                              child: Container(
                                color: Colors.white,
                                child: customTableTwo(
                                  border: const TableBorder(
                                    verticalInside: BorderSide(
                                        width: 0.5,
                                        color: Colors.black45,
                                        style:
                                        BorderStyle.solid),
                                    horizontalInside:
                                    BorderSide(width: 0.2, color: Colors.black45,
                                        style:
                                        BorderStyle.solid),
                                    top: BorderSide(width: 0.5, color: Colors.black45,
                                        style:
                                        BorderStyle.solid),
                                    right: BorderSide(width: 0.5, color: Colors.black45,
                                        style:
                                        BorderStyle.solid),
                                    left: BorderSide(width: 0.5, color: Colors.black45,
                                        style:
                                        BorderStyle.solid),
                                    bottom: BorderSide(width: 0.5, color: Colors.black45,
                                        style:
                                        BorderStyle.solid),
                                  ),
                                  tableWidth: .5,
                                  widths: widths,
                                  childrens: [
                                    for(var i=0;i<customer.length;i++)

                                      TableRow(
                                          children: [

                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPaddingTwo(customer[i].customerUserCode??"",(){
                                                  ontapFuncRow(i);
                                                },align: Alignment.topLeft)),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPaddingTwo(customer[i].customerName.toString().toTitleCase()??"",(){
                                                  ontapFuncRow(i);
                                                },align: Alignment.topLeft)),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPaddingTwo(customer[i].mobile??"",(){
                                                  ontapFuncRow(i);
                                                },align: Alignment.topLeft)),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPaddingTwo(customer[i].createdDate??"",(){
                                                  ontapFuncRow(i);
                                                },align: Alignment.topLeft)),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: textPaddingTwo(customer[i].email??"",(){
                                                  ontapFuncRow(i);
                                                },align: Alignment.topLeft)),
                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child:
                                                textPaddingTwo(customer[i].customerMeta==null ?"":address=(
                                                    (customer[i].customerMeta?.area?.isEmpty==true ||customer[i].customerMeta?.area==null?"":  "${customer[i].customerMeta?.area??""}, ")+
                                                        (   customer[i].customerMeta?.street?.isEmpty==true ||customer[i].customerMeta?.street==null?"":      "${customer[i].customerMeta?.street??""}, ")+
                                                        (customer[i].customerMeta?.city?.isEmpty==true||customer[i].customerMeta?.city==null?"": "${customer[i].customerMeta?.city??""}, ")+
                                                        (customer[i].customerMeta?.landmark?.isEmpty==true||customer[i].customerMeta?.landmark==null?"":"${customer[i].customerMeta?.landmark??""}"??"")),
                                                        (){
                                                          ontapFuncRow(i);
                                                        },align: Alignment.topLeft)),

                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    // InkWell(onTap: (){
                                                    //   // context.read<CustomerListCubit>().g();
                                                    //   context
                                                    //       .read<UserManagementCubit>()
                                                    //       .getSearchUserManage(customer[i].customerUserCode??"");
                                                    //   setState((){});
                                                    //   showDailogPopUp(
                                                    //     context,
                                                    //     SecondPopUp(patch: true,),
                                                    //   );
                                                    // },
                                                    //     child: CircleAvatar(backgroundColor: Color(0xff66687B),minRadius: context.blockSizeHorizontal*0.9,
                                                    //         child: Icon(Icons.edit,color: Color(0xff7486A2),))),


                                                    InkWell(onTap: (){
                                                      ontapFuncRow(i);
                                                    },
                                                      child:
                                                         CircleAvatar(
                                                        backgroundColor: Color(0xff66687B).withOpacity(.2),
                                                        minRadius: context.blockSizeHorizontal*1,
                                                        child: CircleAvatar(
                                                          backgroundColor: Colors.white,
                                                          child: Center(
                                                            child: Container(
                                                                height: context.blockSizeVertical*2,

                                                                child:customer[i].isLoading==true?customCircularLoading():Icon(Icons.edit,color: Color(0xff7486A2),size:context.blockSizeVertical*2 ,)),
                                                          ),

                                                          // backgroundImage: AssetImage("image/bg.jpg"),
                                                          minRadius: context.blockSizeHorizontal*0.9,
                                                        ),
                                                      ),),
                                                    SizedBox(width: 6,),
                                                    InkWell(onTap: (){
                                                      // context.read<CustomerListCubit>().g();
                                                      setState((){});
                                                      showDailogPopUp(
                                                        context,
                                                        CalanderPopUp(customeruserCode: customer[i].customerUserCode??"",),
                                                      );
                                                    },
                                                      child:
                                                      CircleAvatar(
                                                        backgroundColor: Color(0xff66687B).withOpacity(.2),
                                                        minRadius: context.blockSizeHorizontal*1,
                                                        child: CircleAvatar(
                                                          backgroundColor: Colors.white,
                                                          child: Center(
                                                            child: Container(
                                                                height: context.blockSizeVertical*2,

                                                                child: Image.asset("asset_images/calenderIcon.png")),
                                                          ),

                                                          // backgroundImage: AssetImage("image/bg.jpg"),
                                                          minRadius: context.blockSizeHorizontal*0.9,
                                                        ),
                                                      ),),

                                                  ],
                                                )),




                                          ]
                                      ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),

                    ),
                  )
                ],
              );
          }
      ),
);
  }
}