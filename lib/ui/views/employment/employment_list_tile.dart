import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/base_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmploymentListTile extends StatefulWidget {
  final Employment data;
  const EmploymentListTile(this.data);
  @override
  _EmploymentListTileState createState() => _EmploymentListTileState();
}

class _EmploymentListTileState extends State<EmploymentListTile> {
  IconData _arrowIcon = Icons.keyboard_arrow_down;
  @override
  Widget build(BuildContext context) {
    if (widget.data.projects == null || widget.data.projects.isEmpty)
      return BaseListTile(widget.data);
    return ExpansionTile(
      title: SelectableText(widget.data.title),
      subtitle:
          SelectableText('${widget.data.dateFrom} - ${widget.data.dateTo}'),
      trailing: Icon(_arrowIcon),
      onExpansionChanged: (expanded) {
        setState(() {
          if (expanded) {
            _arrowIcon = Icons.keyboard_arrow_up;
          } else {
            _arrowIcon = Icons.keyboard_arrow_down;
          }
        });
      },
      children: widget.data.projects
          .map((p) => _buildProjectInfo(context, p))
          .toList(),
    );
  }

  Widget _buildProjectInfo(BuildContext context, Project p) {
    if (p.name == null) return SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.only(left: UISize.pLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SelectableText(
            p.name,
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: UISize.pSmall),
          p.description != null
              ? SelectableText(
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
        SelectableText(
          'Responsibilities:',
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                decoration: TextDecoration.underline,
              ),
        ),
        SizedBox(height: UISize.pSmall / 2),
        SelectableText(
          ' - ${project.responsibilities.join('\n - ')}',
          style: Theme.of(context).textTheme.button,
        ),
      ],
    );
  }
}
