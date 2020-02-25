import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/material.dart';

class BaseListTile extends StatelessWidget {
  final Employment data;

  const BaseListTile(this.data);

  @override
  Widget build(BuildContext context) {
    if (data.projects == null || data.projects.isEmpty)
      return _buildListTile(context);
    return ExpansionTile(
      title: Text(data.title),
      subtitle: Text('${data.dateFrom} - ${data.dateTo}'),
      trailing: Text(
        data.place,
        style: Theme.of(context).textTheme.caption,
      ),
      children:
          data.projects.map((p) => _buildProjectInfo(context, p)).toList(),
    );
  }

  ListTile _buildListTile(BuildContext context) {
    return ListTile(
      title: Text(data.title),
      subtitle: Text('${data.dateFrom} - ${data.dateTo}'),
      trailing: Text(
        data.place,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }

  Widget _buildProjectInfo(BuildContext context, Project p) {
    if (p.name == null) return SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.only(left: UISize.pLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            p.name,
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: UISize.pSmall),
          p.description != null
              ? Text(
                  p.description,
                  style: Theme.of(context).textTheme.button,
                )
              : SizedBox.shrink(),
          _buildResponsibilities(context, p),
        ],
      ),
    );
  }

  Widget _buildResponsibilities(BuildContext context, Project project) {
    if (project.responsibilities == null) return SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: UISize.pSmall),
        Text(
          'Responsibilities:',
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                decoration: TextDecoration.underline,
              ),
        ),
        SizedBox(height: UISize.pSmall / 2),
        Text(
          ' - ${project.responsibilities.join('\n - ')}',
          style: Theme.of(context).textTheme.button,
        ),
      ],
    );
  }
}
