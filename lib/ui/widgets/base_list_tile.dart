import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/material.dart';

class BaseListTile extends StatelessWidget {
  final Employment data;
  final bool onlyHeader;

  const BaseListTile({this.data, this.onlyHeader = true});

  @override
  Widget build(BuildContext context) {
    if (data.projects == null || data.projects.isEmpty) {
      return _buildHeader(context);
    } else {
      var children = <Widget>[_buildHeader(context)];
      children.addAll(
          data.projects.map((p) => _buildProjectInfo(context, p)).toList());
      children.add(Padding(
        padding: EdgeInsets.only(top: UISize.pSmall),
        child: Divider(
          endIndent: UISize.dividerIndent,
        ),
      ));
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      );
    }
  }

  Padding _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UISize.pSmall),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(data.title,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        )),
                Text('${data.dateFrom} - ${data.dateTo}'),
              ],
            ),
          ),
          onlyHeader
              ? Text(
                  data.place,
                  style: Theme.of(context).textTheme.caption,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _buildProjectInfo(BuildContext context, Project p) {
    if (p.name == null) return SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.only(top: UISize.pSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            p.name,
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
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
