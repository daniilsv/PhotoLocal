import 'package:photolocal/components/image.dart';
import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(3),
      backgroundColor: PLColors.bg,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Я клиент",
                        style: PLStyle.subheader.copyWith(
                          letterSpacing: -0.24,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, left: 5),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 25,
                          color: PLColors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Выйти",
                    style: PLStyle.subheader.copyWith(
                      letterSpacing: -0.24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF191919),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              child: PLImage(
                                "https://sun9-26.userapi.com/O-qgffgQkeEB3wX_Nno6G7FMQregFwAuORYQWQ/fMTedB6I0kc.jpg",
                                width: 56,
                                height: 56,
                                borderRadius: 12,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Михаил Колчанов",
                              style: PLStyle.subheader.copyWith(
                                letterSpacing: -0.24,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 24,
                          color: PLColors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF191919),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(children: [
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.bookmark_border,
                            size: 24,
                            color: PLColors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Сохранённые фото",
                            style: PLStyle.text.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ]),
                        Icon(
                          Icons.chevron_right,
                          size: 24,
                          color: PLColors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF191919),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.camera_alt,
                                  size: 24,
                                  color: PLColors.white,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Съёмки",
                                  style: PLStyle.text.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 24,
                              color: PLColors.white,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 45),
                          child: Divider(
                            height: 1,
                            color: PLColors.bg,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.rate_review,
                                  size: 24,
                                  color: PLColors.white,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Оставленные отзывы",
                                  style: PLStyle.text.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 24,
                              color: PLColors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF191919),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Настройки",
                                  style: PLStyle.text.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 24,
                              color: PLColors.white,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                          child: Divider(
                            height: 1,
                            color: PLColors.bg,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Оставленные отзывы",
                                  style: PLStyle.text.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 24,
                              color: PLColors.white,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                          child: Divider(
                            height: 1,
                            color: PLColors.bg,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Политика Конфиденциальности",
                                  style: PLStyle.text.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 24,
                              color: PLColors.white,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                          child: Divider(
                            height: 1,
                            color: PLColors.bg,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Публичная оферта",
                                  style: PLStyle.text.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 24,
                              color: PLColors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
