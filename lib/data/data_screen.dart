import 'package:flutter/material.dart';
import 'package:resposive_test/model/data_screen_model.dart';

import '../model/grid_view_data.dart';
/*
* const GridViewDataModel(image: Icons.home, title: "طلب مقابلة"),
 const GridViewDataModel(image: Icons.celebration, title: "نماذج"),
 const GridViewDataModel(image: Icons.web, title: "طلب توظيف"),
 const GridViewDataModel(image: Icons.person, title: ""),
 const GridViewDataModel(image: Icons.call_end_rounded, title: "تواصل معنا"),
 const GridViewDataModel(image: Icons.home, title: ""),
 const GridViewDataModel(image: Icons.celebration, title: "نماذج"),
 const GridViewDataModel(image: Icons.web, title: "طلب توظيف"),
 const GridViewDataModel(image: Icons.person, title: "ولى الامر"),*/

const _imagePath = "assets/images";


ModelData modelData =  ModelData(

    carouselImages: const [
      '$_imagePath/job1.jpg',
      '$_imagePath/job2.jpg',
      '$_imagePath/job3.jpg',
      '$_imagePath/job4.jpg',
      '$_imagePath/job5.jpg',
      '$_imagePath/job6.jpg',

    ],

    gridViewData: dataModel1

);

List<GridViewDataModel> dataModel1 =[

  const GridViewDataModel(image: Icons.home, title: "طلب مقابلة"),
  const GridViewDataModel(image: Icons.celebration, title: "نماذج"),
  const GridViewDataModel(image: Icons.web, title: "طلب توظيف"),
  const GridViewDataModel(image: Icons.person, title: "طلب توظيف"),
  const GridViewDataModel(image: Icons.call_end_rounded, title: "تواصل معنا"),
  const GridViewDataModel(image: Icons.home, title: "طلب توظيف"),
  const GridViewDataModel(image: Icons.celebration, title: "نماذج"),
  const GridViewDataModel(image: Icons.web, title: "طلب توظيف"),
  const GridViewDataModel(image: Icons.person, title: "ولى الامر"),
];