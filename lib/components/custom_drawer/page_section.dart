import 'package:flutter/material.dart';
import 'package:xlo/components/custom_drawer/page_tile.dart';

class PageSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Anúncios',
          iconData: Icons.list,
          onTap: (){
          },
          highlighted: false,
        ),
      ],
    );
  }
}
