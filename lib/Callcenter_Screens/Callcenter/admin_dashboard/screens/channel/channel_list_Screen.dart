import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/common_widgets/callcenter_common_listile.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/admin_user.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/channel_list/admin_channel_list_cubit.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/channle/delete/admin_channel_delete_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/admin_new_user/admin_model.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/common_widget/snackbar.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChannelListScreen extends StatefulWidget {


  @override
  State<ChannelListScreen> createState() => _ChannelListScreenState();
}

class _ChannelListScreenState extends State<ChannelListScreen> {
  List<ChannelListModel>channelList=[];
  late AutoScrollController recieveController;
  @override
  void initState() {
    context.read<AdminChannelListCubit>().adminChannelList();
    recieveController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Builder(
        builder: (context) {
          return MultiBlocListener(
  listeners: [
    BlocListener<AdminChannelDeleteCubit, AdminChannelDeleteState>(
      listener: (context, state) {
        state.maybeWhen(orElse: (){},success: (data){
          if(data.data1){
            context.read<AdminChannelListCubit>().adminChannelList();
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
  child: BlocConsumer<AdminChannelListCubit, AdminChannelListState>(
            listener: (context, state) {
              state.maybeWhen(orElse: (){},
                  success: (data){
                    channelList=data.data;
                    print("ssssssssssssssssssssssssssssssssssssssssssssssssssssssss$channelList");

                  });
              // TODO: implement listener
            },
            builder: (context, state) {
              return Expanded(
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: context.blockSizeHorizontal*1.5,vertical: context.blockSizeVertical*1),?
                  child:Row(
                    children: [
                      Flexible(child:  CustomScrollBar(
                        controller: recieveController,
                        childs: SingleChildScrollView(
                          controller: recieveController,
                          scrollDirection: Axis.horizontal,
                          physics: ScrollPhysics(),
                          child: Column(
                            children:[
                              Container(
                                color: Colors.white,
                                width: context.blockSizeHorizontal * 90,
                                child: customTableTwo(

                                  border: const TableBorder(

                                    horizontalInside:
                                    BorderSide(width: 0.2, color: Colors.black45,
                                        style:
                                        BorderStyle.solid),
                                  ),
                                  tableWidth: .5,
                                  widths: {
                                    0: const FlexColumnWidth(4),
                                    1: const FlexColumnWidth(3),
                                    2: const FlexColumnWidth(3),
                                    3: const FlexColumnWidth(3),
                                    4: const FlexColumnWidth(3),
                                    5: const FlexColumnWidth(3),
                                    6: const FlexColumnWidth(3),
                                    7: const FlexColumnWidth(1.5),
                                    8: const FlexColumnWidth(2),

                                  },
                                  childrens: [
                                    TableRow(

                                        children: [

                                          tableHeadtextTwo(
                                              'Channel Name',
                                              color: Color(0xffF8F9FA),
                                              align: Alignment.topLeft,
                                              height: context.blockSizeVertical*5.6,
                                              padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5),
                                              textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
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

                                              textStyle: TextStyle(fontSize:context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                          ),
                                          tableHeadtextTwo(
                                              'Address,Street',
                                              color: Color(0xffF8F9FA),
                                              align: Alignment.topLeft,
                                              height: context.blockSizeVertical*5.6,
                                              textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                          ),
                                          tableHeadtextTwo(
                                              'City',
                                              color: Color(0xffF8F9FA),
                                              height: context.blockSizeVertical*5.6,
                                              align: Alignment.topLeft,
                                              textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                          ), tableHeadtextTwo(
                                              'State/Emirates,Country',
                                              align: Alignment.topLeft,

                                              color: Color(0xffF8F9FA),
                                              height: context.blockSizeVertical*5.6,
                                              textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                            // size: 13,
                                          ),





                                        ]),


                                  ],

                                ),
                              ),
                              SizedBox(height: 3,),

                              BlocBuilder<AdminChannelListCubit, AdminChannelListState>(
                                builder: (context, state) {
                                  return state.maybeWhen(orElse: (){return customCupertinoLoading();},loading: (){return customCupertinoLoading();},
                                      success: (data){
                                        return  channelList.isEmpty?Expanded(
                                          child: Container(
                                              margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                                              // height: context.blockSizeVertical*60,
                                              color: Colors.white,
                                              child: EmptyDataDisplay()),
                                        ): Expanded(
                                          child: Container(
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
                                                      0: const FlexColumnWidth(4),
                                                      1: const FlexColumnWidth(3),
                                                      2: const FlexColumnWidth(3),
                                                      3: const FlexColumnWidth(3),
                                                      4: const FlexColumnWidth(3),
                                                      5: const FlexColumnWidth(3),
                                                      6: const FlexColumnWidth(3),
                                                      7: const FlexColumnWidth(1.5),
                                                      8: const FlexColumnWidth(2),

                                                    },


                                                  childrens: [

                                                    for(var i=0;i<channelList!.length;i++)

                                                      TableRow(
                                                          children: [



                                                            // TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(invoiceList[i].orderdDate.toString().split("T")[0],(){},align: Alignment.topLeft)),
                                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                                child: textPaddingAvatar(channelList[i].channelName?.toString().toTitleCase()??"",(){

                                                                  showDailogPopUp(
                                                                      context,
                                                                      AdminCreationChannel(
                                                                        isPatch: true,
                                                                        isRadOnly: false,
                                                                        chanllelCode: channelList[i].channelCode??"",
                                                                      ));
                                                                },align: Alignment.topLeft,image:"",fontWeight: FontWeight.bold,textExistingWidth: context.blockSizeHorizontal*12)),
                                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(channelList[i].channelAdress?.email??"",(){},align: Alignment.topLeft,textExistingWidth: context.blockSizeHorizontal*12)),

                                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(channelList[i].channelAdress?.contacts??"",(){},align: Alignment.center,textExistingWidth: context.blockSizeHorizontal*12)),
                                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                                child: textPaddingTwo("${channelList[i].channelAdress?.addressone??""}",(){},align: Alignment.topLeft,textExistingWidth: context.blockSizeHorizontal*12)),
                                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                                child: textPaddingTwo("${channelList[i].channelAdress?.cityOrTown??""}",(){},align: Alignment.topLeft ,textExistingWidth: context.blockSizeHorizontal*12)),
                                                            TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                                child: textPaddingTwo("${channelList[i].channelAdress?.state??""},${channelList[i].channelAdress?.country??""}",(){},align: Alignment.topLeft ,height: context.blockSizeVertical*5.5,textExistingWidth: context.blockSizeHorizontal*12)),






                                                          ]
                                                      ),

                                                  ],
                                                ),
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
                      ), flex: 7,),
                      Flexible(child:Column(
                        children:[
                          Container(
                            color: Colors.white,
                            width: context.blockSizeHorizontal * 90,
                            child: customTableTwo(
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
                                          align: Alignment.center,

                                          color: Color(0xffF8F9FA),
    height: context.blockSizeVertical*5.6,
                                          textStyle: TextStyle(fontSize: context.blockSizeHorizontal*.9,color:Colors.black,fontWeight: FontWeight.bold )
                                        // size: 13,
                                      ),





                                    ]),


                              ],

                            ),
                          ),
                          SizedBox(height: 3,),

                          BlocBuilder<AdminChannelListCubit, AdminChannelListState>(
                            builder: (context, state) {
                              return state.maybeWhen(orElse: (){return Container();},loading: (){return Container();},
                                  success: (data){
                                    return  channelList.isEmpty?Expanded(
                                      child: Container(
                                          ),
                                    ): Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            color: Colors.white
                                        ),
                                        width: context.blockSizeHorizontal * 90,
                                        // height: context.blockSizeVertical*60,
                                        child: SingleChildScrollView(
                                          child: Container(
                                            // padding: EdgeInsets.only(left: context.blockSizeHorizontal*1.5,),
                                            color: Colors.white,
                                            child: customTableTwo(
                                              border:  TableBorder(
                                                bottom:      BorderSide(width: 0.2, color: Colors.black45,
                                                    style:
                                                    BorderStyle.solid),
                                                left:      BorderSide(width: 0.1, color: Colors.black45.withOpacity(.5),
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

                                                for(var i=0;i<channelList!.length;i++)

                                                  TableRow(
                                                      children: [




                                                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                            child: AdminTableDotIcon(
                                                              valueList: [PopupMenuClass(value: '1',text: "Edit"),PopupMenuClass(value: '2',text:"Delete"),],
                                                              onTap: (val){
                                                                if(val=="1"){
                                                                  showDailogPopUp(
                                                                      context,
                                                                      AdminCreationChannel(
                                                                        isPatch: true,
                                                                        isRadOnly: false,
                                                                        chanllelCode: channelList[i].channelCode??"",
                                                                      ));

                                                                }

                                                                if(val=="2"){
                                                                  showDailogPopUp(
                                                                      context,
                                                                      //     AdminCreationUser()
                                                                      LogoutPopup(
                                                                        message: "Are you sure you want to delete the channel?",
                                                                        // table:table,
                                                                        // clear:clear(),

                                                                        onPressed:()   async {
                                                                          final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                                                                          var channelCode=      sharedPreferences.getString('channel_code');
                                                                          if(channelCode==channelList[i].channelCode){
                                                                            context.showSnackBarSuccess("Sorry,you can't delete this channel .Because its all ready Selected");
                                                                          }
                                                                          else{
                                                                            context.read<AdminChannelDeleteCubit>().deleteAdminCahnnel(channelList[i].channelCode??"");
                                                                          }


                                                                          // Navigator.of(context);
                                                                        },



                                                                      ));

                                                                }



                                                              },)),





                                                      ]
                                                  ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                              );

                            },)



                        ] ,
                      ), ),

                    ],
                  )


                ),
              );
            },
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