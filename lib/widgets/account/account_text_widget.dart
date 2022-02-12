import 'package:flutter/material.dart';
import 'package:mywishlist/resource/wishlist_colors.dart';

import 'account_form_widget.dart';

class AccountTextWidget extends StatelessWidget {
  const AccountTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: WishlistColors.whiteText,
    );

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/wall2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            AccountFormWidget(),
            const SizedBox(height: 25),
            Text(
              'Чтобы пользоваться всеми возможностями MY WISHLIST, необходимо войти в свою учётную запись.'
               '\n '
                  '\nЕсли у вас нет учётной записи, рекоммендуем зарегистрироваться. Её регистрация является бесплатной и простой.',
              style: textStyle, softWrap: true, overflow: TextOverflow.clip,
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(WishlistColors.green),
              ),
              child: Text('Register', style: textStyle,),
            ),
            const SizedBox(height: 25),
            Text(
              'Если Вы зарегистрировались, \nно не получили письмо для подтверждения, '
                  'нажмите здесь, чтобы отправить письмо повторно.',
              style: textStyle, softWrap: true, overflow: TextOverflow.clip,
            ),
            const SizedBox(height: 5),

            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Verification email',
                style: textStyle,
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.5, color: WishlistColors.whiteText),
              ),
            ),


            // TextButton(
            //   onPressed: () {},
            //   style: ButtonStyle(
            //     shadowColor: MaterialStateProperty.all(WishlistColors.green),
            //     // backgroundColor: MaterialStateProperty.all(WishlistColors.green),
            //   ),
            //   child: Text(
            //     'Verification email',
            //     style: textStyle,
            //   ),
            // ),


            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}



