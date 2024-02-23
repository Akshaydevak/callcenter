import 'package:flutter/material.dart';
import 'package:salesapp/utils/size_config_hilal.dart';


import '../CallcenterAppbar.dart';
import '../salesapp_Screens/leftmenu.dart';
import 'Callcenter/widgets.dart';
import 'package:flutter/services.dart';

class CallCenterMain extends StatefulWidget {
  final int? tabValue;
  final bool editOrder;
  final bool invoiceOrder;
 final bool isCustomerStatemnet;
 final String? userCutsomerCode;
  final bool isRejectOrApprove;
  final bool isRejectOrApproveCart;
  const CallCenterMain({Key? key, this.tabValue=0,  this.editOrder=false,this.isRejectOrApprove=false,this.isRejectOrApproveCart=false,  this.invoiceOrder=false,this.isCustomerStatemnet=false,this.userCutsomerCode}) : super(key: key);

  @override
  State<CallCenterMain> createState() => _CallCenterMainState();
}

class _CallCenterMainState extends State<CallCenterMain> {
  refresh(){
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OrientationBuilder(
          builder: (context, orientation) {
           return Container(
            height: MediaQuery.of(context).size.height,
              color: Color(0xffE1E7ED),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LeftMenu(),

                  Expanded(
                    child: Container(


                      // height: MediaQuery.of(context).size.height-10,

                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CallcenterAppbar(
                              tabValue: widget.tabValue??0,
                            editOrder: widget.editOrder,
                            refresh: refresh,
                            isRejectOrApprove: widget.isRejectOrApprove,
                            userCustomerCode: widget.userCutsomerCode,
                            invoiceOrder: widget.invoiceOrder,isCustomerStatemnet: widget.isCustomerStatemnet),


                          ],
                        ),
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
