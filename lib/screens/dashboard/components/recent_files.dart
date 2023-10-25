
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/RecentFile.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Activités récentes",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              // minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("Produit"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Prix"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [

            Text(fileInfo.title!),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.size!)),
    ],
  );
}
