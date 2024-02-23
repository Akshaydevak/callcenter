import 'dart:async';
import 'dart:convert';

import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:salesapp/Callcenter_Screens/CallCenter_MainScreen.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/pdf_screen_callcenter/invoice_pdf.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Callcenter_Screens/dashboard/screens/popUps/PopUp2.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/customer_statement/customer_statement_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';
import 'package:salesapp/Widgets/Reusable_widget_web.dart';
import 'package:salesapp/Widgets/commonutils.dart';
import 'package:salesapp/Widgets/shared_preference.dart';
import 'package:salesapp/custom_table/costumtable2.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:salesapp/utils/variables.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import '../../Models/usermodel/customer_model.dart';
import 'package:universal_io/io.dart';

import '../common_widgets/common_tabls.dart';

class CustomerStatementListScreen extends StatefulWidget {
  final String UserCustomerCode;
   CustomerStatementListScreen({Key? key, required this.UserCustomerCode}) : super(key: key);

  @override
  State<CustomerStatementListScreen> createState() => _CustomerStatementListScreenState();
}

class _CustomerStatementListScreenState extends State<CustomerStatementListScreen> {
  List<UserCustomerStatementListModel>customerStateMentList=[];
  TextEditingController? dateTypeText=TextEditingController();




  String? _base64Image;
  double _uploadProgress = 0;
  var _response ;

  Future<void> _uploadImage() async {

    final url = Uri.parse('https://api-uat-user.sidrabazar.com/file-upload');
    final headers = {'Content-Type': 'application/json'};
    final request = http.MultipartRequest('POST', url);
    // request.headers.addAll(headers);
    final pickedFile = await FilePicker.platform.pickFiles(type: FileType.custom,
            allowedExtensions: ['jpg', 'pdf', 'doc', 'docx', 'xls', 'xlsx', 'txt'],);


  if (pickedFile != null) {
    Uint8List? bytes =  pickedFile.files.first.bytes;

if(bytes!=null) {
  final imageFile = http.MultipartFile.fromBytes(
    'upload',
    bytes,
    filename: 'doc.pdf',
  );
  print("pickedFile${imageFile}");

  request.files.add(imageFile);
  final response = await request.send();
//  final responseBody = await response.stream.bytesToString();


  final completer = Completer<void>();

  final responseStream =
  Stream.fromIterable(await response.stream.toList());
print("rressspondseee stream ${responseStream.transform(utf8.decoder).first}");


try
{
  // await completer.future;
  final responseBody = await responseStream.transform(utf8.decoder).join();
  Map valueMap = jsonDecode(responseBody);
  print(valueMap);
  print("respooo boidyyy ${valueMap["data"]["upload"]}".runtimeType);
  setState(() {
    print("hrrrrrrrrrrr found");
    _response =valueMap["data"]["upload"];

    Share.share(_response,subject: "good");

  });
}
catch(e) {
  print("response stream exceotiojn $e");
}
}

}


    }
  // late File pickedFile;
  // Future<void> _shareImage() async {
  //   final bytes = await pickedFile.readAsBytes();
  //   await FlutterShare.shareFile(
  //     title: 'Share Image',
  //     filePath: pickedFile.path,
  //     // mimeType: 'image/jpeg',
  //     // bytesOfFile: bytes.buffer.asUint8List(),
  //   );
  // }
  // void selectFile() {
  //   FileUploadInputElement uploadInput = FileUploadInputElement();
  //   uploadInput.click();
  //
  //   uploadInput.onChange.listen((e) {
  //     final files = uploadInput.files;
  //     final file = files![0];
  //     print(file);
  //     // Select the first file
  //     Share.shareFiles([file.toString()]);
  //   });
  // }
  // File createFileFromBytes(Uint8List bytes) {
  //   print("bytes.runtimeType");
  // return  File.fromRawPath(bytes);
  // }
  List<String> imagePaths = [];
  @override
  Widget build(BuildContext context) {
    return

      MultiBlocListener(
        listeners: [
          BlocListener<CustomerStatementCubit, CustomerStatementState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: () {
                    print("error..read User");
                  },
                  success: (data) async {
                    print("date filteration${data.data}");
                    customerStateMentList=data.data;
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) =>
                    //         UserManagement(
                    //
                    //         )));


                    setState(() {

                    });

                  });

            },
          ),
        ],
        child: Builder(
            builder: (context) {
              return Scaffold(
                backgroundColor: Color(0xffE1E7ED),
                body: Container(
                  padding: EdgeInsets.only(
                    left: context.blockSizeHorizontal * 2,right:context.blockSizeHorizontal * 3 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: context.blockSizeVertical*6,),
                      Row(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>
                                      CallCenterMain(tabValue:pages.indexWhere((data)=>7==data.fixedIndex),isCustomerStatemnet:false,)
                                  ));

                            },
                            child: Image.asset("asset_images/arrow_back@3x.png",width: context.blockSizeHorizontal*3,),
                          ),
                          SizedBox(width: context.blockSizeHorizontal*1,),
                          Text("Report",style: TextStyle(color: Colors.black,fontSize: context.blockSizeHorizontal*1.5,fontWeight: FontWeight.bold),)

                        ],
                      ),
                      SizedBox(height: context.blockSizeVertical*2,),
                      Row(
                        children: [
                          Text("Report generated for : ",style: TextStyle(color: Color(0xff7F8DA1)),),
                          SizedBox(width: 4,),
                          Text(widget.UserCustomerCode,style: TextStyle(color: Color(0xff7F8DA1)),),
                          SizedBox(width: 4,),
                          Container(
                            height: 25,
                            width: 150,
                            color: Colors.white,
                            child: Center(child: Text(Variable.dateTypeSelection??"")),
                          ),
                          SizedBox(width: 4,),
                          InkWell(
                            onTap: (){
                              showDailogPopUp(
                                context,
                                CalanderPopUp(customeruserCode: widget.UserCustomerCode,textController:dateTypeText ),
                              );

                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color:Color(0xff3E4F5B)

                              ),
                              child: Center(child: Image.asset("asset_images/calenderIcon.png",color: Colors.white,height: 15,fit: BoxFit.fitHeight,width: 15,)),
                            ),
                          ),

                          Spacer(),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconWithInCircle(
                                image:"asset_images/download.png" ,
                                ontap: () async {
                                  InventoryListModel model=InventoryListModel();
                                  UserPreferences userPref = UserPreferences();
                                  await userPref.getInventoryList().then((user) {
                                    print(user.name);
                                    if (user.isInventoryExist == true) {
                                      model=user;
                                      // prefs.setString('token', user?.token ?? "");
                                    } else {
                                    }
                                  });
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>
                                        CustomerStateMentPdf(

                                          model:model,
                                          vendorCode:"vendorCode.text",
                                          orderCode:customerStateMentList.isEmpty?"":customerStateMentList[0].customerCode??"" ,
                                          orderDate:DateFormat('dd-MM-yyyy').format(DateTime.now()),
                                          table:customerStateMentList.isEmpty?[]:customerStateMentList,

                                          pageName: "GENERAL",
                                        )),
                                  );



                                },
                              ),
                              SizedBox(width: 6,),
                              IconWithInCircle(
                                image:"asset_images/share1.png" ,
                                ontap: () async {
                                  // _shareImage();
                                  // selectFile();
                                  // _shareImage();
                                  // FilePickerResult? result;
                                  // // final image=await ImagePicker().pickImage(source: ImageSource.gallery);
                                  // // if(image==null) return;
                                  // //
                                  //  result =await FilePicker.platform.pickFiles(type: FileType.custom,
                                  //     allowedExtensions: ['jpg', 'pdf', 'doc', 'docx', 'xls', 'xlsx', 'txt'],
                                  //   );
                                  // Share.share("gfchghjk");
                                  _uploadImage();



                                  // final filePath = 'C:\Users\rgc11\OneDrive\Pictures\Screenshots'; // Replace with the actual file path
                                  //
                                  // await Share.shareFiles([result?.paths.toString()??""],
                                  //     text: 'Check out this file!', // Optional message
                                  //     subject: 'File Sharing');


                                  //   final files=result?.files.map((files) => files.path!).toList();
                                  // print(files);
                         //          Uint8List uploadfile = result.files.single.bytes;
                         // var file=          createFileFromBytes( uploadfile);
                         // print("files+"+file.toString());
                                  // await Share.file('esys image', 'esys.png', bytes.buffer.asUint8List(), 'image/png');
                                    // if (files==null)return;

                                  // if (result != null && result.files.isNotEmpty) {
                                  //   final fileBytes = result.files.first.bytes;
                                  //   print("filebytes"+fileBytes);
                                  //   final fileName = result.files.first.name;
                                  //   Share.share(result.toString());
                                    // upload file

                                  }



                              ),


                            ],
                          )



                        ],
                      ),
                      SizedBox(height: context.blockSizeVertical*4,),

                      Column(
                        children: [
                          SizedBox(height: context.blockSizeVertical * 1,),
                          Container(
                            alignment: Alignment.topRight,
                            // height: context.blockSizeVertical*40,

                            // color: Colors.yellow,
                            child: Column(
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
                                        BorderSide(
                                            width: 0.2, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        top: BorderSide(
                                            width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        right: BorderSide(
                                            width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        left: BorderSide(
                                            width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                        bottom: BorderSide(
                                            width: 0.5, color: Colors.black45,
                                            style:
                                            BorderStyle.solid),
                                      ),
                                      tableWidth: .5,
                                      widths: {

                                        0: const FlexColumnWidth(1),
                                        1: const FlexColumnWidth(2),
                                        2: const FlexColumnWidth(3),
                                        3: const FlexColumnWidth(2),
                                        4: const FlexColumnWidth(2),
                                        5: const FlexColumnWidth(4),
                                        6: const FlexColumnWidth(3),
                                        7: const FlexColumnWidth(2),


                                      },
                                      childrens: [
                                        TableRow(

                                            children: [
                                              tableHeadtextTwo(

                                                'Sl.No',
                                                // padding:
                                                // const EdgeInsets.all(15),
                                                height: 42,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(
                                                'Order ID',
                                                // padding:
                                                // const EdgeInsets.all(15),
                                                height: 42,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(
                                                'Channel Details Id',
                                                // padding:
                                                // const EdgeInsets.all(15),
                                                height: 42,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(
                                                'Invoice  Code',
                                                // padding:
                                                // const EdgeInsets.all(15),
                                                height: 42,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(
                                                'Invoice Date',
                                                // padding:
                                                // const EdgeInsets.all(15),
                                                height: 42,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(
                                                'Order Type',
                                                // padding:
                                                // const EdgeInsets.all(13),
                                                height: 42,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(
                                                'Total Amount',
                                                // padding:
                                                // const EdgeInsets.all(13),
                                                height: 42,
                                                size: 13,
                                              ),
                                              tableHeadtextTwo(
                                                'Invoice Status',
                                                // padding:
                                                // const EdgeInsets.all(13),
                                                height: 42,
                                                size: 13,
                                              ),
                                              // tableHeadtextTwo(
                                              //   'Actions',
                                              //   // padding:
                                              //   // const EdgeInsets.all(13),
                                              //   height: 42,
                                              //   size: 13,
                                              // ),


                                            ]),


                                      ],
                                    ),
                                  ),
                                ),
                                customerStateMentList.isNotEmpty==true?
                                Container(
                                  color: Color(0xffE1E7ED),
                                  width: context.blockSizeHorizontal * 90,
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
                                          BorderSide(
                                              width: 0.2, color: Colors.black45,
                                              style:
                                              BorderStyle.solid),
                                          top: BorderSide(
                                              width: 0.5, color: Colors.black45,
                                              style:
                                              BorderStyle.solid),
                                          right: BorderSide(
                                              width: 0.5, color: Colors.black45,
                                              style:
                                              BorderStyle.solid),
                                          left: BorderSide(
                                              width: 0.5, color: Colors.black45,
                                              style:
                                              BorderStyle.solid),
                                          bottom: BorderSide(
                                              width: 0.5, color: Colors.black45,
                                              style:
                                              BorderStyle.solid),
                                        ),
                                        tableWidth: .5,
                                        widths: {

                                          0: const FlexColumnWidth(1),
                                          1: const FlexColumnWidth(2),
                                          2: const FlexColumnWidth(3),
                                          3: const FlexColumnWidth(2),
                                          4: const FlexColumnWidth(2),
                                          5: const FlexColumnWidth(4),
                                          6: const FlexColumnWidth(3),
                                          7: const FlexColumnWidth(2),


                                        },
                                        childrens: [
                                          for(var i=0;i<customerStateMentList.length;i++)

                                            TableRow(
                                                children: [
                                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo((i+1).toString(),(){},align: Alignment.topLeft,)),
                                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(customerStateMentList[i]?.orderId.toString()??"",(){},align: Alignment.topLeft)),
                                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(customerStateMentList[i]?.channelDetailsId.toString()??"",(){},align: Alignment.topLeft)),
                                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(customerStateMentList[i].invoiceCode??"",(){},align: Alignment.topLeft)),
                                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(customerStateMentList[i].invoiceDate??"",(){},align: Alignment.topLeft)),
                                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(customerStateMentList[i].orderType??"",(){},align: Alignment.topLeft)),
                                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(customerStateMentList[i]?.totalAmount.toString()??"",(){},align: Alignment.topLeft)),
                                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: textPaddingTwo(customerStateMentList[i]?.invoiceStatus.toString()??"",(){},align: Alignment.topLeft)),
                                                  // TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                                  //     child:
                                                  //     Row(mainAxisAlignment: MainAxisAlignment.center,
                                                  //       children: [
                                                  //         // InkWell(onTap: (){
                                                  //         //   // context.read<CustomerListCubit>().g();
                                                  //         //   context
                                                  //         //       .read<UserManagementCubit>()
                                                  //         //       .getSearchUserManage(customer[i].customerUserCode??"");
                                                  //         //   setState((){});
                                                  //         //   showDailogPopUp(
                                                  //         //     context,
                                                  //         //     SecondPopUp(patch: true,),
                                                  //         //   );
                                                  //         // },
                                                  //         //     child: CircleAvatar(backgroundColor: Color(0xff66687B),minRadius: context.blockSizeHorizontal*0.9,
                                                  //         //         child: Icon(Icons.edit,color: Color(0xff7486A2),))),
                                                  //
                                                  //
                                                  //         InkWell(onTap: (){
                                                  //           // context.read<CustomerListCubit>().g();
                                                  //           // selected=true;
                                                  //           //
                                                  //           // context
                                                  //           //     .read<UserManagementCubit>()
                                                  //           //     .getSearchUserManage(customer[i].customerUserCode??"");
                                                  //           // setState((){});
                                                  //           // showDailogPopUp(
                                                  //           //   context,
                                                  //           //   SecondPopUp(patch: true,),
                                                  //           // );
                                                  //         },
                                                  //           child:
                                                  //           CircleAvatar(
                                                  //             backgroundColor: Color(0xff66687B).withOpacity(.2),
                                                  //             minRadius: context.blockSizeHorizontal*1,
                                                  //             child: CircleAvatar(
                                                  //               backgroundColor: Colors.white,
                                                  //               child: Center(
                                                  //                 child: Container(
                                                  //                     height: context.blockSizeVertical*2,
                                                  //
                                                  //                     child:Icon(Icons.edit,color: Color(0xff7486A2),size:context.blockSizeVertical*2 ,)),
                                                  //               ),
                                                  //
                                                  //               // backgroundImage: AssetImage("image/bg.jpg"),
                                                  //               minRadius: context.blockSizeHorizontal*0.9,
                                                  //             ),
                                                  //           ),),
                                                  //         SizedBox(width: 6,),
                                                  //         IconWithInCircle(
                                                  //           image:"asset_images/share1.png" ,
                                                  //           ontap: (){print("Akshay");},
                                                  //         ),
                                                  //
                                                  //
                                                  //       ],
                                                  //     )
                                                  // ),




                                                ]
                                            ),


                                        ],
                                      ),
                                    ),
                                  ),
                                ):
                                Container(
                                    // margin:  EdgeInsets.only(right: context.blockSizeHorizontal*3.4),
                                    height: context.blockSizeVertical*60,
                                    color: Colors.white,
                                    child: EmptyDataDisplay())

                              ],
                            ),

                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
        ),
      );
  }
}
