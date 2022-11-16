import 'package:equatable/equatable.dart';
import 'grid_view_data.dart';

class ModelData extends Equatable{

 final List<String> carouselImages ;

 final List<GridViewDataModel> gridViewData;

  const ModelData({required this.carouselImages,required this.gridViewData});

  @override
  // TODO: implement props
  List<Object?> get props => [
    carouselImages,
    gridViewData,
  ];
}