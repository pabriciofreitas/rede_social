import 'package:flutter/material.dart';

import 'custom_footer_tile.dart';

class PublishFooter extends StatelessWidget {
  const PublishFooter({
    Key? key,
    required this.size,
    required this.onLikeClick,
    required this.onCommentClick,
    required this.isLiked,
    required this.favoriteLength,
    required this.commentLength,
  }) : super(key: key);

  final Function()? onCommentClick;
  final Function()? onLikeClick;
  final Size size;
  final bool isLiked;
  final int commentLength, favoriteLength;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomTile(
          size: size,
          content: favoriteLength,
          onTap: onLikeClick,
          label: "curtidas",
          icon: isLiked
              ? Icons.favorite_outlined
              : Icons.favorite_border_outlined,
        ),
        CustomTile(
          size: size,
          content: commentLength,
          onTap: onCommentClick,
          label: "comentários",
          icon: Icons.mode_comment_outlined,
        ),
      ],
    );
  }
}
