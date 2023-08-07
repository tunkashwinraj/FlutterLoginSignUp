import 'package:flutter/material.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor,),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: Image(image: AssetImage(tBookMarkImage), width: 50,)),
                    Flexible(child: Image(image: AssetImage(tBannerImage1), width: 150,)),
                  ],
                ),
                SizedBox(height: 25,),
                Text(tDashboardBannerTitle1, style: txtTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis,),
                Text(tDashboardBannerSubTitle1, style: txtTheme.bodyText2, maxLines: 1,overflow: TextOverflow.ellipsis),

              ],
            ),
          ),
        ),
        SizedBox(width: tDashboardCardPadding,),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: tCardBgColor,),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(child: Image(image: AssetImage(tBookMarkImage), width: 50,)),
                        Flexible(child: Image(image: AssetImage(tBannerImage2), width: 80,)),
                      ],
                    ),
                    Text(tDashboardBannerTitle2, style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
                    Text(tDashboardBannerTitle1, style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis),

                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: (){},
                    child: Text("View All")),
              )


            ],
          ),
        ),

      ],
    );
  }
}
