import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/Callcenter_Screens/Callcenter/widgets.dart';
import 'package:salesapp/Cubit/Call_Center_Cubit/Read_Variant_Cubit/read_variant_cubit.dart';
import 'package:salesapp/Cubit/Reccomondation/frequently_recommendation/frequently_recommendation_cubit.dart';
import 'package:salesapp/Models/Call_Center_Model/rightscreen/recommondation.dart';
import 'package:salesapp/custom_table/costumtable.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

// import '../../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import '../../Models/Call_Center_Model/Create_Order_CallCenter/Create_Orders.dart';
import '../../Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import '../../Widgets/commonutils.dart';
import '../common_widgets/callcenter_common_listile.dart';
import '../dashboard/screens/popUps/PopUp3.dart';
import '../dashboard/screens/popUps/PopUp5.dart';
import '../dashboard/screens/popUps/PopUp6.dart';
import 'Profile_Screen.dart';

class ProductInfoScreen extends StatefulWidget {
  final Function editChange;

  final TextEditingController? allCostemerId;
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;
  final TextEditingController text;
  final TextEditingController stock;
  final TextEditingController? productID;
  const   ProductInfoScreen({Key? key, required this.controller1, required this.controller2, required this.controller3, required this.controller4, required this.text, required this.stock, this.productID, required this.editChange, this.allCostemerId}) : super(key: key);

  @override
  State<ProductInfoScreen> createState() => _ProductInfoScreenState();
}

class _ProductInfoScreenState extends State<ProductInfoScreen> {
  ReadVarriant? readData;
   TextEditingController actualCost=TextEditingController();
   TextEditingController priceDataCost=TextEditingController();
   List<RecommendationCallCenterModel> frequentRecommendationList=List.from([]);
   @override
  void initState() {
     print("widget.productID?.text${widget.productID?.text}");
     if(widget.productID?.text.isNotEmpty==true) {
       context.read<ReadVariantCubit>().getVariantRead(int.parse(widget.productID?.text??"0"));
       context.read<FrequentlyRecommendationCubit>().getFrequentlyRecommendationList(widget.productID?.text??"0");
     }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // context.read<ReadVariantCubit>().getVariantRead(int.parse(widget.productID?.text??"0"));
    return MultiBlocListener(
    listeners: [
      BlocListener<ReadVariantCubit, ReadVariantState>(
       listener: (context, state) {
         state.maybeWhen(
             orElse: () {},
             error: () {
               print("error..read Variant");
             },
             success: (data) {
               setState(() {
                 readData=data;
                 print("datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata");
                 print(data);

                 widget.controller1.text=readData?.minGp.toString()??"";
                 actualCost.text=readData?.actualCost.toString()??"";
                 priceDataCost.text=readData?.priceData.toString()??"";
                 widget.controller2.text=readData?.avgGp.toString()??"";
                 widget.controller3.text=readData?.maxGp.toString()??"";
                 widget.controller4.text=readData?.targetGp.toString()??"";
                 widget.text.text=readData?.name??"";
                 widget.stock.text=readData?.stockCount.toString()??"";
               });
             }
         );
    },
),
      BlocListener<FrequentlyRecommendationCubit, FrequentlyRecommendationState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              error: () {
                print("error..read Variant");
              },
              success: (data) {
                print("bhhhhhhhhhhhhhhuuuuuuuuuuuuuuuuuuuuuuuuuuu");
                setState(() {
                  frequentRecommendationList=data.data;

                });
              }
          );
        },
      ),
    ],
    child: Column(
        children: [
          Card(
            // color: Colors.blue,
            child: Column(
              children: [
                SizedBox(height: context.blockSizeVertical*2,),
                Row(
                  children: [
                    SizedBox(width: context.blockSizeHorizontal*2,),

Container(
            height: context.blockSizeVertical*11
            ,width: context.blockSizeHorizontal*4,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.withOpacity(.2),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(image: NetworkImage( readData?.image1??"https://th.bing.com/th/id/OIP.eYXN9VThslitIDILIBmoewHaHa?w=196&h=196&c=7&r=0&o=5&dpr=1.3&pid=1.7"))
            ),
          ),
                    SizedBox(width: context.blockSizeHorizontal*1,),
                     // Image.network(readData?.image1??"https://th.bing.com/th/id/OIP.eYXN9VThslitIDILIBmoewHaHa?w=196&h=196&c=7&r=0&o=5&dpr=1.3&pid=1.7",height: context.blockSizeVertical*4,width: context.blockSizeHorizontal*4,),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width:context.blockSizeHorizontal*10,
                            child: Text(widget.text.text,style: TextStyle(fontSize:context.blockSizeVertical*2,overflow: TextOverflow.ellipsis),)),
                        Row(
                          children: [
                            Text("Stock :",style: TextStyle(fontWeight: FontWeight.w600,fontSize:context.blockSizeVertical*2),),
                            Text(widget.stock.text,style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff4CA109),fontSize:context.blockSizeVertical*2),),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
                SizedBox(height: context.blockSizeVertical*2, ),
                Container(
                  color: Color(0xffF2F2F2
                  ),
                  padding: EdgeInsets.symmetric(vertical: context.blockSizeVertical*2),
                  child: Column(
                    children: [
                      Row(

                        children: [
                          SizedBox(width: context.safeBlockHorizontal*2,),
                          Text("Selling Price",style: TextStyle(fontSize:context.blockSizeHorizontal*1,color: Color(0xff66687B)),),
                          Spacer(),
                          Text("AED "+priceDataCost.text??"00",style: TextStyle(fontWeight: FontWeight.w600,fontSize:context.blockSizeHorizontal*1),),

                          SizedBox(width: context.safeBlockHorizontal*2,),
                        ],

                      ),
                      SizedBox(height: context.blockSizeVertical*1 ,),
                      Divider(color: Colors.white,endIndent: context.blockSizeHorizontal*1.7,indent:context.blockSizeHorizontal*1.7,)

                    ],
                  ),
                ),


                // Row(
                //   children: [
                //     SizedBox(width: context.blockSizeHorizontal*2,),
                //     Column(
                //       children: [
                //         Text("Selling Price",style: TextStyle(fontSize:context.blockSizeHorizontal*1),),
                //         SizedBox(height: context.blockSizeVertical*1,),
                //         priceDataCost.text!="null"?     Text("AED "+priceDataCost.text??"",style: TextStyle(fontWeight: FontWeight.w600,fontSize:context.blockSizeHorizontal*1),):Expanded(child: Container())
                //       ],
                //     ),
                //     Spacer(),
                //     Column(
                //       children: [
                //         Text("Actual Price",style: TextStyle(fontSize:context.blockSizeHorizontal*1),),
                //         SizedBox(height: context.blockSizeVertical*1,),
                //        actualCost.text!="null"? Text("AED "+actualCost.text,style: TextStyle(fontWeight: FontWeight.w600,fontSize:context.blockSizeHorizontal*1),):Expanded(child: Container())
                //       ],
                //     ),
                //     SizedBox(width: context.blockSizeHorizontal*2,),
                //   ],
                // ),
                // SizedBox(height: context.blockSizeVertical*2.5,),
                //
                // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     ProductGPCard(txt1: "Minimum GP", controller: widget.controller1),
                //     ProductGPCard(txt1: "Average GP",controller: widget.controller2,),
                //   ],
                // ),
                // SizedBox(height: context.blockSizeVertical*2,),
                // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     ProductGPCard(txt1: "Maximum GP",controller: widget.controller3,),
                //     ProductGPCard(txt1: "Targeted GP",controller: widget.controller4,),
                //   ],
                // ),
                SizedBox(height: context.blockSizeVertical*1,),

              ],
            ),
          ),
          Expanded(
            child: Container(
              // height: 28,
              // width: 200,
              color: Colors.white,
              child: ListView.builder(
                itemCount: frequentRecommendationList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                return CallCenterCommonLProductCArd(title: frequentRecommendationList[index].name??"",
                  onAdd: (){
                    widget.editChange();

                    widget.allCostemerId?.text=frequentRecommendationList[index].id.toString();
                    context.read<ReadVariantCubit>().getVariantRead(frequentRecommendationList[index].id??0);
                  },
                  sellingPrize:frequentRecommendationList[index].priceData.toString() ,
                  leadingImage:frequentRecommendationList[index].image1??"" ,

                );
              },),
            ),
          )
          // Card(
          //   child: Container(height: context.blockSizeVertical*4.5,
          //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Text("Average Basket Value :"),
          //         Text("145.5"),
          //       ],),
          //   ),
          // ),
          // ButtonCard(ontap: (){
          //   showDailogPopUp(
          //     context,
          //     FifthPopUp(),
          //   );
          // },
          //   ontapp: (){
          //     showDailogPopUp(
          //       context,
          //       SixthPopUp(),
          //     );
          //   },
          //
          // ),
          // GpCardScreen()
        ],
      ),
);
  }
}
