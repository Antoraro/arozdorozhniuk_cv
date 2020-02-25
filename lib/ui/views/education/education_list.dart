import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/material.dart';

class EducationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Education',
          style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.black,
              ),
        ),
        Column(
          children: MyInfo.educationList
              .map((e) => Padding(
                    padding: EdgeInsets.only(top: UISize.pSmall),
                    child: ListTile(
                      title: Text(e.name),
                      subtitle: Text('${e.dateFrom} - ${e.dateTo}'),
                      trailing: Text(
                        e.place,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
