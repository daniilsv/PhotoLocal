import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/models/photographer.dart';
import 'package:photolocal/theme/theme.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  ChatAppBar(this.photographer);
  final Photographer photographer;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: PLColors.bg,
      ),
      child: Row(
        children: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_back, color: PLColors.white, size: 24),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: Text(
              photographer.name,
              style: PLStyle.textFieldHeader,
              textAlign: TextAlign.center,
            ),
          ),
          GestureDetector(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: PLImage(photographer.profilePic,
                    width: 24, height: 24, borderRadius: 12)),
            onTap: () {
              ///
            },
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40);
}
