import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:flutter/material.dart';

class BaseListTile extends StatelessWidget {
  final Employment data;
  const BaseListTile(this.data);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data.title),
      subtitle: Text('${data.dateFrom} - ${data.dateTo}'),
      trailing: Text(
        data.place,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
