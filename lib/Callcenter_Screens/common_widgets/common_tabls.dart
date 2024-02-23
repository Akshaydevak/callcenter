import 'package:flutter/material.dart';

class PageEntity{
  String name;
  Widget page;
  int fixedIndex;



  PageEntity({required this.page, required this.name, required this.fixedIndex});
}
List<PageEntity>pages=[];