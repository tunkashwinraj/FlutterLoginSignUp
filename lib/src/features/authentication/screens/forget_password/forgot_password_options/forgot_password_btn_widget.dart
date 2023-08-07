import 'package:flutter/material.dart';
import 'package:untitled/src/features/authentication/screens/forget_password/forgot_password_mail/forgot_password_mail.dart';



class ForgotPasswordBtnWidget extends StatelessWidget {
  const ForgotPasswordBtnWidget({
    super.key, required this.subTitle, required this.title, required this.btnIcon, this.onTap,
  });

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ForgotPasswordMailScreen()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(btnIcon, size: 60,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline6,),
                Text(subTitle, style: Theme.of(context).textTheme.bodyText2,)
              ],
            ),
          ],
        ),

      ),

    );
  }
}