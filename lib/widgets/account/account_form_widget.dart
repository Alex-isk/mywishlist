import 'package:flutter/material.dart';
import 'package:mywishlist/resource/wishlist_colors.dart';

class AccountFormWidget extends StatefulWidget {
  const AccountFormWidget({Key? key}) : super(key: key);

  @override
  _AccountFormWidgetState createState() => _AccountFormWidgetState();
}

class _AccountFormWidgetState extends State<AccountFormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _account() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      print('open app');
      errorText = null;
    } else {
      errorText = "Не верный логин или пароль";
    }
    setState(() {});
  } //auth

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      // fontWeight: FontWeight.bold,
      color: WishlistColors.whiteText,
    );

    final textFieldDecorator = const InputDecoration(
      // suffixIcon: Icon(Icons.drive_file_rename_outline),
      // errorText: 'error',
      // labelText: 'Username',
      // labelStyle: TextStyle(fontSize: 20,
      //   // fontWeight: FontWeight.bold,
      //   color: WishlistColors.whiteText,),
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: WishlistColors.green, width: 1
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: WishlistColors.whiteText, width: 1
        ),
      ),
      // errorBorder: OutlineInputBorder(
      //   borderSide: BorderSide(
      //       color: WishlistColors.redText, width: 1
      //   ),
      // ),
    );

    final color = WishlistColors.green;
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(
              color: WishlistColors.redText,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
        ],
        Text(
          'Username',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
          cursorColor: color,
          decoration: textFieldDecorator,
          style: TextStyle(fontSize: 16, color: WishlistColors.whiteText,),

        ),
        const SizedBox(height: 20),
        Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          cursorColor: color,
          decoration: textFieldDecorator,
          obscureText: true,
          style: TextStyle(fontSize: 16, color: WishlistColors.whiteText,),
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            TextButton(
              onPressed: _account,
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  ),
                  backgroundColor: MaterialStateProperty.all(color)),
              child: Text(
                'Login',
                style: textStyle,
              ),
            ),
            const SizedBox(width: 30),
            OutlinedButton(
              onPressed: _resetPassword,

              // style: ButtonStyle(
              //   padding: MaterialStateProperty.all(
              //     EdgeInsets.symmetric(horizontal: 15, vertical: 8),

              child: Text(
                'Reset password',
                style: textStyle,
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.5, color: WishlistColors.whiteText),
              ),
            ),

            // onPressed: _resetPassword,
            // style: ElevatedButton.styleFrom(
            // // foregroundColor: MaterialStateProperty.all(WishlistColors.whiteText,),
            // // side: MaterialStateProperty.all(WishlistColors.whiteText),
            // // shape: MaterialStateProperty.all(RoundedRectangleBorder(
            // //     borderRadius: BorderRadius.,
            // side: BorderSide(width: 2.0, color: WishlistColors.whiteText),),),
            // //   shadowColor: MaterialStateProperty.all(WishlistColors.green),
            // // backgroundColor: MaterialStateProperty.all(color),
            // // foregroundColor: MaterialStateProperty.all(color),
            // // textStyle: MaterialStateProperty.all(textStyle),
          ],
        ),
      ],
    );
  }
}
