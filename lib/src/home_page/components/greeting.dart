import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class GreetingSection extends SliverFixedExtentList {
  GreetingSection(double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB((0.079*height), 0, (0.079*height), (0.079*height)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular((0.079*height)),
                        bottomRight: Radius.circular((0.079*height))),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB((0.092*height), 0, 0, (0.099*height)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Plant Disease Detector',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: (0.3*height),
                              color: kWhite),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: height,
        );
}

class SizedSection extends SliverFixedExtentList
{
  SizedSection(double height, {Key? key})
      : super(key: key,
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB((0.079*height), 0.50*height, (0.079*height), (0.079*height)),
              child: Container(


              ),
            );
          },
          childCount: 1,
        ),
        itemExtent: height,
        );
}