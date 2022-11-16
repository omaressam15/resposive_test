import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class GridViewDataModel  extends Equatable {

 final IconData image;
 final String title;

 const GridViewDataModel({

   required this.image,
   required this.title
 });

  @override
  // TODO: implement props
  List<Object?> get props => [
    image,
    title,
  ];
}