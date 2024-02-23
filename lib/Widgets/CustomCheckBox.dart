import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
class CustomCheckBox extends StatefulWidget {
  final bool value;
  final Function(bool)? onChange;

  const CustomCheckBox({Key? key, this.value = false, this.onChange})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool val;
  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    if (!onChange) val = widget.value;
    onChange = false;
    return InkWell(
      onTap: () {
        val = !val;
        if (widget.onChange != null) widget.onChange!(val);
        onChange = true;
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 0),
        child: Center(
          child: val
              ? Icon(
            Icons.check_box,
            color: Colors.green,
          )
              : Icon(Icons.check_box_outline_blank),
        ),
      ),
    );
  }
}
Widget customStackedLoader(
    BuildContext context, double? opacity, Color? color,{double? height,double? padding,}) {
  var h = MediaQuery.of(context).size.height;
  var w = MediaQuery.of(context).size.width;
  return Container(
    // width: width,
      color: color?.withOpacity(opacity ?? 0.1),
      //  Colors.grey.withOpacity(opacity??0.1),
      height: height??h,
      padding: EdgeInsets.all(padding??165),
      child: LoadingIndicator(
          indicatorType: Indicator.ballPulse,
          colors: [Colors.green],
          strokeWidth: 0.1,
          backgroundColor: Colors.transparent,
          pathBackgroundColor: Colors.black)
    // customCupertinoLoading(color: Colors.black54,radius: 20)
    // LoaderTransparent()
  );
}