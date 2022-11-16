import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../data/data_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CarouselSlider(
                  items: modelData.carouselImages.map((e)=> ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                      child: Image.asset(e,
                        width: MediaQuery.of(context).size.width,))).toList(),
                  options: CarouselOptions(
                    height: 250.0,
                    viewportFraction: 1.0,
                    autoPlay: true,
                    autoPlayCurve:Curves.decelerate ,
                    onPageChanged: (index, reason) {},

                  ),),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: OrientationBuilder(
                  builder: (BuildContext context, Orientation orientation) =>
                      GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.4,
                            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 6
                        ),
                        itemCount: modelData.gridViewData.length,
                        itemBuilder: (context,index){
                          return Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(

                                color: Colors.blue,
                                width: 4
                              )
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(color: Colors.blue,size: 50,modelData.gridViewData[index].image),
                                    Text(dataModel1[index].title,style: const TextStyle(color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
