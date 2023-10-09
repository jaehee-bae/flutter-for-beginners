import 'package:flutter/material.dart';

class Webtoon extends StatelessWidget {
  final String id, title, thumb;

  const Webtoon({
    super.key,
    required this.id,
    required this.title,
    required this.thumb,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  offset: const Offset(10, 10),
                  color: Colors.black.withOpacity(0.3),
                ),
              ]),
          child: Image.network(
            thumb,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
