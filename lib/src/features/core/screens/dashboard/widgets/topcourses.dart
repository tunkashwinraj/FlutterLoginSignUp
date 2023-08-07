import 'package:flutter/material.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/features/authentication/models/dashboard/top_courses.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopCore.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)=> GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top:5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: tCardBgColor,
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text(list[index].title,style: txtTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis,)),
                        Flexible(child: Image(image: AssetImage(list[index].image), height: 110,))
                      ],
                    ),
                    Row(children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: CircleBorder()),
                        onPressed: (){},
                        child: Icon(Icons.play_arrow),
                      ),
                      SizedBox(width: tDashboardCardPadding,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].heading, style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
                          Text(list[index].subHeading, style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ],),

                  ],
                ),
              ),
            ),
          ),
        ),









        // children: [
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 10, top:5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10), color: tCardBgColor,
        //         ),
        //         padding: EdgeInsets.all(10),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(child: Text("Flutter Crash Course",style: txtTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis,)),
        //                 Flexible(child: Image(image: AssetImage(tTopCourse1), height: 110,))
        //               ],
        //             ),
        //             Row(children: [
        //               ElevatedButton(
        //                 style: ElevatedButton.styleFrom(shape: CircleBorder()),
        //                 onPressed: (){},
        //                 child: Icon(Icons.play_arrow),
        //               ),
        //               SizedBox(width: tDashboardCardPadding,),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text("3 sections", style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
        //                   Text("Programming Languages", style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis,),
        //                 ],
        //               ),
        //             ],),
        //
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10), color: tCardBgColor,
        //       ),
        //       padding: EdgeInsets.all(10),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(child: Text("Flutter Crash Course",style: txtTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis,)),
        //               Flexible(child: Image(image: AssetImage(tTopCourse1), height: 110,))
        //             ],
        //           ),
        //           Row(children: [
        //             ElevatedButton(
        //               style: ElevatedButton.styleFrom(shape: CircleBorder()),
        //               onPressed: (){},
        //               child: Icon(Icons.play_arrow),
        //             ),
        //             SizedBox(width: tDashboardCardPadding,),
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text("3 sections", style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
        //                 Text("Programming Languages", style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis,),
        //               ],
        //             ),
        //           ],),
        //
        //         ],
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10), color: tCardBgColor,
        //       ),
        //       padding: EdgeInsets.all(10),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Flexible(child: Text("Flutter Crash Course",style: txtTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis,)),
        //               Flexible(child: Image(image: AssetImage(tTopCourse1), height: 110,))
        //             ],
        //           ),
        //           Row(children: [
        //             ElevatedButton(
        //               style: ElevatedButton.styleFrom(shape: CircleBorder()),
        //               onPressed: (){},
        //               child: Icon(Icons.play_arrow),
        //             ),
        //             SizedBox(width: tDashboardCardPadding,),
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text("3 sections", style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
        //                 Text("Programming Languages", style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis,),
        //               ],
        //             ),
        //           ],),
        //
        //         ],
        //       ),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
