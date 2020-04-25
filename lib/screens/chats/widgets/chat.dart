import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/global/utils.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/chat/providers/chat.dart';
import 'package:photolocal/screens/chats/providers/chats.dart';
import 'package:photolocal/theme/theme.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({
    this.photographer,
    this.message,
    this.time,
    this.order,
  });
  final Photographer photographer;
  final Message message;
  final DateTime time;
  final Order order;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: Row(
        children: [
          PLImage(
            photographer.picture,
            width: 56,
            height: 56,
            borderRadius: 12,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      photographer.name,
                      style: PLStyle.button.copyWith(fontWeight: FontWeight.w700),
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (order != null) ...[
                      SizedBox(width: 8),
                      Icon(
                        Icons.calendar_today,
                        color: PLColors.accent,
                        size: 16,
                      ),
                    ],
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (order == null)
                      Text(
                        photographer.name,
                        overflow: TextOverflow.ellipsis,
                        style: PLStyle.textMed,
                      )
                    else
                      Text(
                        "Подтверждена съёмка ${Utils.getDateTime(dateTime: order.time)}",
                        overflow: TextOverflow.ellipsis,
                        style: PLStyle.textMed.copyWith(color: PLColors.accent),
                      ),
                    Text(
                      Utils.getDateTime(dateTime: time),
                      style: PLStyle.textMed.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
