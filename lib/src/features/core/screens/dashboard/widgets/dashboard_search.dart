import 'package:flutter/material.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/features/authentication/models/dashboard/catagories_search_models.dart';

class DashboardSearch extends StatelessWidget {
  const DashboardSearch({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCatagories.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: list[index].onPress,
            child: SizedBox(
                  width: 170,
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tDarkColor,
                        ),
                        child: Center(child: Text(list[index].title,
                          style: txtTheme.headline6?.apply(
                              color: Colors.white),)),
                      ),
                      SizedBox(width: 5,),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(list[index].heading, style: txtTheme.headline6,
                              overflow: TextOverflow.ellipsis,),
                            Text(list[index].subHeading, style: txtTheme.bodyText2,
                              overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
          ),


        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           alignment: Alignment.topLeft,
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tDarkColor,
        //           ),
        //           child: Center(child: Text("JS", style: txtTheme.headline6?.apply(color: Colors.white),)) ,
        //         ),
        //         SizedBox(width: 5,),
        //         Flexible(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Text("Java Script", style: txtTheme.headline6, overflow: TextOverflow.ellipsis,),
        //               Text("10 Lessons", style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           alignment: Alignment.topLeft,
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tDarkColor,
        //           ),
        //           child: Center(child: Text("JS", style: txtTheme.headline6?.apply(color: Colors.white),)) ,
        //         ),
        //         SizedBox(width: 5,),
        //         Flexible(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Text("Java Script", style: txtTheme.headline6, overflow: TextOverflow.ellipsis,),
        //               Text("10 Lessons", style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           alignment: Alignment.topLeft,
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tDarkColor,
        //           ),
        //           child: Center(child: Text("JS", style: txtTheme.headline6?.apply(color: Colors.white),)) ,
        //         ),
        //         SizedBox(width: 5,),
        //         Flexible(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Text("Java Script", style: txtTheme.headline6, overflow: TextOverflow.ellipsis,),
        //               Text("10 Lessons", style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ],
      ),);
  }
}
