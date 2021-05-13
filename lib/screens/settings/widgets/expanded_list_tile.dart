import 'package:flutter/material.dart';

class ExpandedListTile {
  final String leading;
  final List<ExpandedListTile> children;

  ExpandedListTile({@required this.leading, this.children});
}

List<ExpandedListTile> listofTiles = <ExpandedListTile>[
  ExpandedListTile(
    leading: "Something",
    children: <ExpandedListTile>[
      ExpandedListTile(leading: "Seraf"),
    ],
  )
];
