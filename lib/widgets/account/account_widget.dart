import 'package:flutter/material.dart';
import 'package:mywishlist/resource/wishlist_colors.dart';

import 'account_text_widget.dart';

class AccountWidget extends StatefulWidget {
  AccountWidget({Key? key}) : super(key: key);

  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WishlistColors.greyText,
        title: Center(
          child: Text(
            'Login to your account',
            style: const TextStyle(
              color: WishlistColors.green,
              fontWeight: FontWeight.w500,
              // letterSpacing: 4, // межбуквенный интервал
              // height: 20,                     // высота строки
              fontSize: 20,
              // fontFamily: 'Bombing.ttf',
            ),
          ),
        ),
      ),
      body: ListView(
        children: [AccountTextWidget()],
      ),
    );
  }
}

// class _HeaderWidget extends StatelessWidget {
//   const _HeaderWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final textStyle = const TextStyle(
//       fontSize: 14,
//       color: WishlistColors.blackText,
//     );
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 25),
//           _FormWidget(),
//           const SizedBox(height: 25),
//           Text(
//             'Чтобы пользоваться правкой и возможностями рейтинга TMDB, '
//             'а также получить персональные рекомендации, необходимо войти '
//             'в свою учётную запись. Если у вас нет учётной записи, '
//             'её регистрация является бесплатной и простой. ',
//             style: textStyle,
//           ),
//           const SizedBox(height: 5),
//           TextButton(
//             onPressed: () {},
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(WishlistColors.green),
//             ),
//             child: Text('Register'),
//           ),
//           const SizedBox(height: 25),
//           Text(
//             'Если Вы зарегистрировались, но не получили письмо для подтверждения, '
//             'нажмите здесь, чтобы отправить письмо повторно.',
//             style: textStyle,
//           ),
//           const SizedBox(height: 5),
//           TextButton(
//             onPressed: () {},
//             style: ButtonStyle(
//               shadowColor: MaterialStateProperty.all(WishlistColors.green),
//               // backgroundColor: MaterialStateProperty.all(WishlistColors.green),
//             ),
//             child: Text(
//               'Verification email',
//               style: textStyle,
//             ),
//           ),
//           const SizedBox(height: 30),
//         ],
//       ),
//     );
//   }
// }

// class _FormWidget extends StatefulWidget {
//   const _FormWidget({Key? key}) : super(key: key);
//
//   @override
//   _FormWidgetState createState() => _FormWidgetState();
// }
//
//
// class _FormWidgetState extends State<_FormWidget> {
//   final _loginTextController = TextEditingController();
//   final _passwordTextController = TextEditingController();
//   String? errorText = null;
//
//   void _account() {
//     final login = _loginTextController.text;
//     final password = _passwordTextController.text;
//     if (login == 'admin' && password == 'admin') {
//       print('open app');
//       errorText = null;
//     } else {
//       errorText = "Не верный логин или пароль";
//     }
//     setState(() {});
//   } //auth
//
//   void _resetPassword() {
//     print('reset password');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final textStyle = const TextStyle(
//       fontSize: 16,
//       fontWeight: FontWeight.bold,
//       color: WishlistColors.greyText,
//     );
//
//     final textFieldDecorator = const InputDecoration(
//       border: OutlineInputBorder(),
//       contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       isCollapsed: true,
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(
//           color: WishlistColors.greyText,
//         ),
//       ),
//     );
//
//     final color = WishlistColors.green;
//     final errorText = this.errorText;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (errorText != null)
//           ...[Text(
//             errorText,
//             style: TextStyle(color: WishlistColors.redText,
//             fontSize: 16),
//           ),
//          SizedBox(height: 20),
//           ],
//         Text(
//           'Username',
//           style: textStyle,
//         ),
//         const SizedBox(height: 5),
//         TextField(
//           controller: _loginTextController,
//           cursorColor: color,
//           decoration: textFieldDecorator,
//         ),
//         const SizedBox(height: 20),
//         Text(
//           'Password',
//           style: textStyle,
//         ),
//         const SizedBox(height: 5),
//         TextField(
//           controller: _passwordTextController,
//           cursorColor: color,
//           decoration: textFieldDecorator,
//           obscureText: true,
//         ),
//         const SizedBox(height: 25),
//         Row(
//           children: [
//             TextButton(
//               onPressed: _account,
//               style: ButtonStyle(
//                   padding: MaterialStateProperty.all(
//                     EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//                   ),
//                   backgroundColor: MaterialStateProperty.all(color)),
//               child: Text(
//                 'Login',
//                 style: textStyle,
//               ),
//             ),
//             const SizedBox(width: 30),
//             TextButton(
//               onPressed: _resetPassword,
//               // style: ButtonStyle(
//               //   backgroundColor: MaterialStateProperty.all(color),
//               //   // foregroundColor: MaterialStateProperty.all(color),
//               //   // textStyle: MaterialStateProperty.all(textStyle),
//               // ),
//               child: Text(
//                 'Reset password',
//                 style: textStyle,
//               ),
//             ),
//
//           ],
//         ),
//       ],
//     );
//   }
// }
