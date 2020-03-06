import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/base_card.dart';
import 'package:flutter/material.dart';

class TextInfoView extends StatelessWidget {
  final String header;
  final String description;

  const TextInfoView({this.header, this.description});

  @override
  Widget build(BuildContext context) {
    if (description == null || description.isEmpty) return SizedBox.shrink();
    return BaseCard(
      header: header,
      child: Padding(
        padding: EdgeInsets.only(top: UISize.pSmall),
        child: Text(description, style: Theme.of(context).textTheme.button),
      ),
    );
  }
}
