import 'package:arozd_cv/config/my_info.dart';
import 'package:flutter/material.dart';

class BaseListTile extends StatelessWidget {
  final Employment data;
  const BaseListTile(this.data);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SelectableText(data.title),
      subtitle: SelectableText('${data.dateFrom} - ${data.dateTo}'),
      trailing: SelectableText(
        data.place,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
