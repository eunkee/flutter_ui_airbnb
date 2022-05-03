import 'package:flutter/material.dart';
import 'package:flutter_ui_airbnb/constants.dart';
import 'package:flutter_ui_airbnb/size.dart';
import 'package:flutter_ui_airbnb/style.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          const Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo(){
    return Row(
      children: [
        Image.asset("assets/logo.png", width: 30, height: 30, color: kAccentColor),
        const SizedBox(width: gap_s),
        Text("RoomOfAll", style: h5(mColor: Colors.white)),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        // 1. 클릭 이벤트를 원하면 InkWell 이나 TextButton 위젯을 사용
        Text("회원가입", style: subtitle1(mColor: Colors.white)),
        const SizedBox(width: gap_m),
        Text("로그인", style: subtitle1(mColor: Colors.white)),
      ],
    );
  }
}
