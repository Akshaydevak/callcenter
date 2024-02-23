import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/User_Management/customer_statement_screen.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Customer_List_Cubit/customer_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/User_Management_Cubit/user_management_cubit.dart';
import 'package:salesapp/Cubit/userManageMentList/user_manage_ment_list_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

import '../../Widgets/Reusable_widget_web.dart';
import '../../Widgets/commonutils.dart';
import '../../custom_table/costumtable2.dart';
import '../Callcenter/widgets.dart';
import '../dashboard/screens/popUps/PopUp2.dart';
import 'User_Table.dart';

class UserManagement extends StatefulWidget {
  final bool isCustomerStatemnet;
  final String? userCustomerCode;
  const UserManagement({Key? key,this.isCustomerStatemnet=false,this.userCustomerCode}) : super(key: key);

  @override
  State<UserManagement> createState() => _UserManagementState();
}

class _UserManagementState extends State<UserManagement> {
  List<CustomerList>customer=[];
  TextEditingController search =TextEditingController();
  final GlobalKey<UserTableState> userStableState = GlobalKey<UserTableState>();
  final GlobalKey<RecentUserTableState> recetUserStableState = GlobalKey<RecentUserTableState>();
  bool isCustomerStatemnet=false;

  bool allOrde=true;
  bool holdOrder=false;
  @override
  void initState() {
    context.read<UserManageMentListCubit>().getUserManage("recent");
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocListener<UserManageMentListCubit, UserManageMentListState>(
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
    child: Builder(
      builder: (context) {
        return

          widget.isCustomerStatemnet!=true?
          DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor:Color(0xffE1E7ED).withOpacity(.2),
              appBar: AppBar(
                toolbarHeight: context.blockSizeVertical*0.05,
                automaticallyImplyLeading: false,
                backgroundColor:Color(0xffE1E7ED),
                elevation: 0,
                bottom:   PreferredSize(
                  preferredSize: Size.fromHeight(context.blockSizeVertical*14),
                  child:

                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: context.blockSizeHorizontal*2,top: context.blockSizeVertical*2),
                        child: Text("User Management",style: TextStyle(fontSize: context.blockSizeHorizontal*1.2,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: context.blockSizeVertical*2,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(

                              margin:EdgeInsets.only(left:  context.blockSizeHorizontal*2) ,
                              color: Colors.white,
                              // width: context.blockSizeHorizontal*74,
                            child: TextFormField(
                              controller: search,
                              onChanged: (sa){
                                userStableState.currentState?.selected=false;
                                userStableState.currentState?.isCallPaginated=false;
                                recetUserStableState.currentState?.selected=false;
                                userStableState.currentState?.pagintedCountReset();
                                allOrde==true?context
                                    .read<UserManageMentListCubit>().getsearchUSer(search.text):
                                holdOrder==true?context
                                    .read<UserManageMentListCubit>().getsearchUSer(search.text):
                                null;
                                setState(() {

                                });
                              },
                              decoration: InputDecoration(
                                suffixIcon:   Container(
                                  width: 1,
                                  height: context.blockSizeVertical*2.5,
                                  margin: EdgeInsets.symmetric(vertical: 7,
                                      horizontal: context.blockSizeHorizontal * .6),
                                  child: Image.asset("asset_images/searchIcon.png",height: context.blockSizeVertical*3,),

                                ),
                                hintText: "Search Order by order id / User's Name...",
                                hintStyle: TextStyle(fontSize: context.blockSizeVertical*1.5),
                                isDense: true,
                                label: null,
                                contentPadding: EdgeInsets.symmetric(vertical:context.blockSizeVertical*2.25,horizontal:context.blockSizeHorizontal*1.25 ),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide:
                                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide:
                                  BorderSide(color: Color(0xff3E4F5B).withOpacity(.1)),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xff3E4F5B).withOpacity(.001))),
                              ),
                            ),
                            ),
                          ),
                          SizedBox(width:context.blockSizeHorizontal*.5,),
                          PopupMenuButton(
                            padding: EdgeInsets.zero,
                            color:   Colors.white,
                            position: PopupMenuPosition.under,
                            onSelected: (va){
                              if(va=="1"){
                                context.read<UserManageMentListCubit>().getUserManage("recent");
                              }
                              if(va=="2"){
                                context.read<UserManageMentListCubit>().getUserManage("none");

                              }
                              // widget.onTap!(va);
                            },
                            itemBuilder: (BuildContext context) {
                              return <PopupMenuEntry<String>>[
                                const PopupMenuItem(
                                    padding: EdgeInsets.zero,
                                    value: '1',
                                    child:  ListTile(leading: Text("Ascending",style: TextStyle(color: Colors.black),),)
                                ),
                                const PopupMenuItem(
                                    padding: EdgeInsets.zero,
                                    value: '2',
                                    child:ListTile(leading: Text("Descending",style: TextStyle(color: Colors.black),),)

                                ),
                              ];
                            },
                            child: Container(
                              height: context.blockSizeVertical*5.5,
                              width: context.blockSizeHorizontal*3,
                              color: Colors.white,
                              child: Center(
                                child: Icon(Icons.filter,color: Colors.black,),
                              ),
                            ),
                          ),
                          SizedBox(width:context.blockSizeHorizontal*.5,),
                          Container(
                            width: context.blockSizeHorizontal*14.5,
                            height: context.blockSizeVertical*5,
                            child: TabBar(
                                padding: EdgeInsets.zero,
                                labelColor:  Colors.white,
                                onTap: (val){
                                  print("VALLL$val");
                                  if(val==0){

                                    allOrde=true;
                                    holdOrder=false;
                                    context.read<UserManageMentListCubit>().getUserManage("recnet");
                                    setState(() {

                                    });
                                  }
                                  else if(val==1){
                                    holdOrder=true;
                                    allOrde=false;
                                    context.read<UserManageMentListCubit>().getRecentUserManage("recent");
                                  }

                                },
                                unselectedLabelColor: const Color(0xff7F8DA1),
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicator:  BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff7789A6)),
                                tabs: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text("All Users",style: TextStyle(fontSize: context.blockSizeHorizontal*0.8,fontWeight: FontWeight.bold,),),
                                  ),
                                  Tab(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Recent",style: TextStyle(fontSize: context.blockSizeHorizontal*0.8,fontWeight: FontWeight.bold),),
                                    ),
                                  ),


                                ]
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              body:      TabBarView(
                  children: [
                    UserTable(key: userStableState,),
                    // Text("print")
                    RecentUserTable(key: recetUserStableState,),

                  ])

            )
        ):

          CustomerStatementListScreen(UserCustomerCode: widget.userCustomerCode??"",);

      }
    ),
);
  }
}
