import 'package:flutter/widgets.dart';

class Grid extends StatelessWidget {
  const Grid({
    super.key,
    required this.children,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
  });

  final List<Widget> children;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  @override
  Widget build(BuildContext context) {
    final remaining = children.length % crossAxisCount;

    return Column(
      children: [
        for (int i = 0; i < children.length; i += crossAxisCount)
          Row(
            children: [
              for (int j = i;
                  j < ((i + crossAxisCount) < children.length ? i + crossAxisCount : (i + crossAxisCount) - remaining);
                  ++j)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: mainAxisSpacing / 2, horizontal: crossAxisSpacing / 2),
                    child: children[j],
                  ),
                )
            ],
          ),
      ],
    );
  }
}
