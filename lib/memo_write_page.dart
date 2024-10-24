import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemoWritePage extends StatelessWidget {
  const MemoWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: Get.back,
          child: Image.asset('assets/images/back.png'),
        ),
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          '메모',
          style: TextStyle(fontSize: 17, color: Color(0xffE3AC34)),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                '완료',
                style: TextStyle(fontSize: 17, color: Color(0xffE3AC34)),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '제목을 입력해주세요.',
              ),
              style: TextStyle(
                fontSize: 27,
                height: 1.5,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
              ),
              maxLines: null, // 여러 줄 입력 가능
            ),
            Text(
              '2024.08.10',
              style: TextStyle(fontSize: 13, color: Color(0xffE3AC34)),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '내용을 입력해주세요.',
                ),
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Color(0xff848484),
                  letterSpacing: -1,
                ),
                maxLines: null, // 여러 줄 입력 가능
              ),
            ),
          ],
        ),
      ),
    );
  }
}
