import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salesapp/Cubit/Dashboard_Cubit/Recent_Customer_Cubit/recent_customer_cubit.dart';
import 'package:salesapp/Models/Dashboard_model_Class/Recent_Customers/Recent_Customers.dart';
import 'package:salesapp/utils/size_config_hilal.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class Recent extends StatefulWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: context.blockSizeVertical*44,
        width: context.blockSizeHorizontal*23,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xffFFFFFF),),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 15),
              child: Row(
                children: [

                  Text("Recent Customers",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.9),),
                ],
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(left: 10),
              child: CustomerCard(),
            )




          ],
        ),
      ),
    );
  }
}
//////////////////////
class CustomerCard extends StatefulWidget {
  const CustomerCard({Key? key}) : super(key: key);

  @override
  State<CustomerCard> createState() => _CustomerCardState();
}

class _CustomerCardState extends State<CustomerCard> {
  List<RecentCustomers> readData=[];
  ScrollController _scrollController=ScrollController();
  late AutoScrollController controller;
  @override
  void initState() {
    // Variable.verticalScrollIndex = 0;
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => RecentCustomerCubit()..getRecent(),
  child: BlocListener<RecentCustomerCubit, RecentCustomerState>(
     listener: (context, state) {
    state.maybeWhen(
        orElse: () {},
        error: () {
          print("error..");
        },
        success: (data) {
          // for(var i=0;i<data.length;i++){

          // }
          setState(() {
            readData = data;
            // print("hhh$readData");

          });
        }
    );
  },
  child: Row(
      children: [
        Scrollbar(
            child: SizedBox(
              width: context.blockSizeHorizontal*20,
              child: ListView.separated(
                key: UniqueKey(),
                separatorBuilder: (context, index) => SizedBox(
                  height: context.blockSizeVertical*3,

                ),
                controller: _scrollController,
                itemBuilder: (context, index) {
                  return AutoScrollTag(

                    key: ValueKey(index),
                    controller:controller ,
                    index: index,
                    child: CustomerListTile(
                      title: readData[index].userName.toString(),
                      subTitle: readData[index].email.toString(),
                      img: "asset_images/Profileimage.png",
                        // readData[index].profilePic.toString()
                    ),
                  );
                },
                itemCount: readData.length,
                shrinkWrap: true,
              ),
            ))
      ],
    ),
),
);
  }
}
///////////////////
class CustomerListTile extends StatelessWidget {
  final String img;
  final String title;
  final String subTitle;

  const CustomerListTile({Key? key, required this.img, required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.blockSizeVertical*4,
      child: ListTile(
        leading: CircleAvatar(child: Image(image: AssetImage(img),),),
        title: Text(title,style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.85),),
        subtitle: Text(subTitle,style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: context.blockSizeHorizontal*0.8),),
      )
    );
  }
}
