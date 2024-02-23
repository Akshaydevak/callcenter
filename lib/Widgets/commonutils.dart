import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesapp/utils/size_config_hilal.dart';


void showDailogPopUp(BuildContext context, Widget child) {
  showDialog(
    context: context,
    builder: (context) => child,
  );
}


extension StringCasingExtension on String {

   String toCapitalized() =>

  length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');

}


class SuccessPopup extends StatefulWidget {
  final String content;

  SuccessPopup({required this.content});

  @override
  State<SuccessPopup> createState() => _SuccessPopupState();
}

class _SuccessPopupState extends State<SuccessPopup> {
  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return AlertDialog(
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          content: Text(
            widget.content,
            style: TextStyle(color: Colors.green),
          ));
    });
  }
}

class FailiurePopup extends StatefulWidget {
  final String content;

  FailiurePopup({required this.content});

  @override
  State<FailiurePopup> createState() => FailiurePopupState();
}

class FailiurePopupState extends State<FailiurePopup> {
  // List inventoryIdList = ["BSNU1000", "BSNU1007"];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return AlertDialog(
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          content: Text(
            widget.content,
            style: TextStyle(color: Colors.red),
          ));
    });
  }
}
Widget tablePagination(VoidCallback reset,
    {VoidCallback? next, VoidCallback? back}) =>
    Container(
      alignment: Alignment.topRight,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          TextButton.icon(
              onPressed: back,
              icon: Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              label: Text("Back",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
          TextButton.icon(
              onPressed: next,
              label: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              icon: Text("Next",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
        ],
      ),
    );




class tablePaginationNew extends StatefulWidget {
  final VoidCallback? next;
  final VoidCallback reset;
  final VoidCallback? back;
   tablePaginationNew({Key? key, this.next, required this.reset, this.back}) : super(key: key);

  @override
  State<tablePaginationNew> createState() => _tablePaginationNewState();
}

class _tablePaginationNewState extends State<tablePaginationNew> {
  bool isHover1=false;
  bool isHover2=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: context.blockSizeHorizontal*3.2),
      padding: EdgeInsets.all(8),

      color: Colors.white,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MouseRegion(
            onEnter: (event) {
              isHover1 = true;
              setState(() {});
            },
            onExit: (event) {
              isHover1 = false;
              setState(() {});
            },
            child: InkWell(
              onTap: widget. back,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    border: Border.all(
                        color:isHover1?Color(0xff6F91CB):widget .back!=null?Color(0xff6F91CB):Color(0xffc5c5c5)
                    ),
                    color: isHover1?Color(0xff6F91CB):widget. back!=null?Colors.white:Color(0xffc5c5c5)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12,),
                    Icon(Icons.arrow_back_ios,color:isHover1?Colors.white:widget. back!=null?Color(0xff6F91CB):Colors.grey,size: 16,),
                    // IconButton(
                    //     onPressed:widget. back,
                    //     icon: Icon(
                    //       Icons.arrow_back_ios,
                    //       size: 16,color:isHover1?Colors.white:widget. back!=null?Colors.blue:Colors.grey,
                    //     )),
                    SizedBox(width: 2,),
                    Text("Previous",style: TextStyle(color:isHover1?Colors.white:widget. back!=null?Color(0xff6F91CB):Colors.grey,fontWeight: FontWeight.bold ),),
                    SizedBox(width: 12,),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 6,),
          MouseRegion(
            onEnter: (event) {
              isHover2 = true;
              setState(() {});
            },
            onExit: (event) {
              isHover2 = false;
              setState(() {});
            },
            child: InkWell(
              onTap: widget. next,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                    border: Border.all(
                        color:isHover2?Color(0xff6F91CB):widget. next!=null?Color(0xff6F91CB):Colors.grey
                    ),
                    color:isHover2?Color(0xff6F91CB) :widget. next!=null?Colors.white:Color(0xffc5c5c5)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12,),


                    Text(" Next ",style: TextStyle(color:isHover2?Colors.white:widget. next!=null?Color(0xff6F91CB):Colors.grey,fontWeight: FontWeight.bold ),),
                    SizedBox(width: 4,),
                    Icon(Icons.arrow_forward_ios, color:isHover2?Colors.white:widget. next!=null?Color(0xff6F91CB):Colors.grey,size: 16,),
                    // IconButton(
                    //     onPressed:widget. next,
                    //     icon: Icon(
                    //       Icons.arrow_forward_ios,
                    //       size: 16,
                    //       color:isHover2?Colors.white:widget. next!=null?Colors.blue:Colors.grey,
                    //     )),
                    SizedBox(width: 12,),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class tableCountPagination extends StatefulWidget {
  final Function next;
  final VoidCallback reset;
  final VoidCallback? back;
  final int count;
  final int limit;
  final int totalCount;
  final List<int> displayList;
  final String totalCountText;
  tableCountPagination({Key? key,required this.next, required this.reset, this.back, required this.count,this.limit=6,required this. displayList, required this.totalCount, required this.totalCountText}) : super(key: key);

  @override
  State<tableCountPagination> createState() => tableCountPaginationState();
}

class tableCountPaginationState extends State<tableCountPagination> {
  bool isHover1=false;
  bool isHover2=false;
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    print("Enteeeeeeeeeeeeeeeeeeeredbuild case${widget.displayList}");
    return  Container(

      margin: EdgeInsets.only(right: context.blockSizeHorizontal*3.2),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 1
          )
        )
      ),


      alignment: Alignment.center,
      child: Row(
        children: [
          Text("Total ${widget.totalCount.toString()}  ${widget.totalCountText}"),
          Spacer(),
          Container(
            height: context.blockSizeVertical*5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Color(0xff687892).withOpacity(.3)),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(widget.count<=widget.limit)...[
                  // paginattedIconArrow(
                  //   isRightborder: true,
                  //   ontap: (){
                  //
                  //   }, icon: Icons.arrow_back_ios,iconColor: Colors.grey),

                  for(var i=0;i<widget.displayList.length;i++)
                    countPagination(
                      ontap: (){
                        setState(() {
                          selectedIndex=i;
                          widget. next(widget.displayList[i]);
                        });
                      },
                      clr:  selectedIndex==i?Color(0xff687892):Color(0xffE1E7ED).withOpacity(.3), displayText:widget.displayList[i].toString().toString(),textClr:selectedIndex==i?Colors.white: Color(0xff7789A6)),

                  // paginattedIconArrow(
                  //   ontap: (){},
                  //     icon:Icons.arrow_forward_ios,iconColor: Colors.grey,),
                ],
                if(widget.count>widget.limit)...[
              if(widget.displayList[0]!=1)    paginattedIconArrow(
                    isRightborder: true,
                    ontap: (){
                      if(widget.displayList[0]!=1){
                        widget.displayList.removeAt(widget.displayList.length-1);
                        var val=widget.displayList[0];
                        widget.displayList.insert(0, val-1);
                          widget. next( widget.displayList[selectedIndex]);
                        setState(() {
                        });
                      }
                    },
                    icon: Icons.arrow_back_ios,iconColor:widget.displayList[0]!=1? Color(0xff7789A6):Colors.grey,

                  ),
                  for(var i=0;i<widget.limit;i++)
                    countPagination(
                      clr: selectedIndex==i?Color(0xff687892):Color(0xffE1E7ED).withOpacity(.3),
                      ontap: (){
                        setState(() {
                          selectedIndex=i;
                          widget. next(widget.displayList[i]);
                        });
                      },
    displayText:widget.displayList[i].toString(),textClr:selectedIndex==i?Colors.white: Color(0xff7789A6),

                    ),
             if( widget.displayList[widget.displayList.length-1]!=widget.count)     paginattedIconArrow(
                    ontap: (){
                      print(widget.displayList.length.toString());
                      print(widget.count.toString());
                      if(widget.displayList[widget.displayList.length-1]!=widget.count){
                        var val=widget.displayList[widget.displayList.length-1];
                        widget.displayList.add(val+1);
                        widget.displayList.removeAt(0);

                        widget. next( widget.displayList[selectedIndex]);

                        setState(() {
                        });
                      }
                    },
                    icon: Icons.arrow_forward_ios,iconColor: widget.displayList[widget.displayList.length-1]!=widget.count?Color(0xff7789A6):Colors.grey,

                  ),
                ]




              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );

  }
}

class paginattedIconArrow extends StatefulWidget {
  final IconData icon;
  final Function ontap;
  final Color iconColor;
  final bool isRightborder;

   paginattedIconArrow({Key? key, required this.icon,this.isRightborder=false, required this.ontap,this.iconColor=const Color(0xff7789A6)}) : super(key: key);

  @override
  State<paginattedIconArrow> createState() => _paginattedIconArrowState();
}

class _paginattedIconArrowState extends State<paginattedIconArrow> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
      widget.ontap();

      },
      child: Container(
        width: context.blockSizeHorizontal*2.5,
        decoration: BoxDecoration(
          color: Color(0xffE1E7ED).withOpacity(.3),
          border: Border(
            right: widget.isRightborder?BorderSide(color: Colors.grey):BorderSide.none,
          )
        ),

        height: context.blockSizeVertical*5,
        child: Center(

          child: Icon(widget.icon,size: 16,color: widget.iconColor,),
        ),
      ),
    );
  }
}
class countPagination extends StatefulWidget {
  final Function ontap;

  final Color clr;
  final Color textClr;
  final String displayText;
   countPagination({Key? key, required this.ontap, required this.clr, required this.textClr, required this.displayText}) : super(key: key);

  @override
  State<countPagination> createState() => _countPaginationState();
}

class _countPaginationState extends State<countPagination> {
   bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return
      MouseRegion(
        onEnter: (event) {
          isHover = true;
          setState(() {});
        },
        onExit: (event) {
          isHover = false;
          setState(() {});
        },
        child: InkWell(
        onTap: (){

            widget.ontap();

        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical:isHover?4: 3,horizontal:isHover?18: 15                                                        ),
          decoration: BoxDecoration(
              color: isHover?Colors.grey.withOpacity(.4):widget.clr,
              border: Border(
                right: BorderSide( //                   <--- right side
                  color: Colors.grey,
                  width: 1.0,
                ),
              )
          ),

          height: context.blockSizeVertical*10,
          child: Center(

            child:Text(widget.displayText,style: TextStyle(color:isHover?Colors.white:widget.textClr),),
          ),
        ),
    ),
      );
  }
}

class SearchTextfiled extends StatefulWidget {
  final Color color;
  final Color suffixColor;
  final String hintText;
  final FocusNode? focusNode;
  final double h;
  double w;
  final bool suffiXCheck;
  final bool  suffixIconCheck;

  final Function(String )? onChanged;

  final VoidCallback? onComplete;
  final VoidCallback? suffixOnComplete;
  final VoidCallback? onTap;
  final TextEditingController ctrlr;
  SearchTextfiled({required this.color,this.onTap,this.suffixColor=Colors.black,this.suffixIconCheck=false,this.suffiXCheck=false,required this.hintText,required this.ctrlr,this.onComplete,this.suffixOnComplete, this.onChanged,this.h=32,this.w=625, this.focusNode});

  @override
  State<SearchTextfiled> createState() => _SearchTextfiledState();
}

class _SearchTextfiledState extends State<SearchTextfiled> {
  TextEditingController _controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    // widget.w=MediaQuery.of(context).size.width/2.11;
    return Container(
      // margin: EdgeInsets.only(top:3,),
      //   width: widget.w,
        // height: widget.h,
        // color: ,
        // color:Color(0xFF423E3F),
        // padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
        child: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.blue),
          child: TextFormField(
            onEditingComplete:widget.onComplete,
            onChanged:widget.onChanged,
            focusNode:widget.focusNode,

            style: TextStyle(color: Colors.black),
            controller: widget.ctrlr,
            maxLines: 1,
            autofocus: true,
            onTap: widget.onTap,

            decoration: InputDecoration(


              fillColor: widget.color,
              isDense: true,
              contentPadding: EdgeInsets.all(12),
              filled: true,
              labelStyle: TextStyle(color: Colors.white),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black38, width: .6),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black38, width: .6),
              ),



              // border: InputBorder.none,
              hintText: widget.hintText,
              suffixIcon: widget.suffiXCheck?GestureDetector(
                  onTap: (){
                    if(widget.suffixOnComplete!=null){
                      widget.suffixOnComplete!();
                    }

                  },
                  child: Container(
                      color: Colors.blue,

                      // alignment: Alignment.center,
                      // padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        child:  Icon(
                          Icons.search,color: widget.suffixColor,
                        ),
                      ))):Container(
                // color: Colors.red,
                  padding:  EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    child:  Icon(
                      Icons.search,color:widget.suffixIconCheck?Colors.blue:Colors.grey,
                    ),
                  )),

              hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
              // ),
            ),
          ),
        ));

  }
}
