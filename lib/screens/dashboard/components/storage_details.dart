import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Produits les plus vendus",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Telephones",
            amountOfFiles: "100 000F",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Ordinateurs",
            amountOfFiles: "80 000F",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Depannage",
            amountOfFiles: "50 000F",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Batteries",
            amountOfFiles: "40 000F",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Pochettes et glaces",
            amountOfFiles: "30 000F",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Chargeurs et claviers",
            amountOfFiles: "25 000F",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Autres accessoires",
            amountOfFiles: "20 000F",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
