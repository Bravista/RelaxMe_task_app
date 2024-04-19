import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../domain/styles.dart';

class S5112 extends StatelessWidget {
  const S5112({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(AppStyles.defaultPadding),
            child: Image.network("https://image.jimcdn.com/app/cms/image/transf/dimension=310x10000:format=jpg/path/s6daccef63eabd0db/image/i513835b33600eb00/version/1499505232/image.jpg"),
            height: 400.0,  
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            "Name",
            style: AppStyles.titleStyle,
          ),
          const Text("Diana das Lama"),
          const SizedBox(
            height: AppStyles.elementSpacing,
          ),
          Text("Gewicht",
            style: AppStyles.titleStyle,
          ),
          const Text("120 kg"),
          const SizedBox(
            height: AppStyles.elementSpacing,
          ),
          Text("Größe",
            style: AppStyles.titleStyle,
          ),
          const Text("1,80 m"),
          const SizedBox(
            height: AppStyles.elementSpacing,
          ),
          Text("Lieblingsessen",
            style: AppStyles.titleStyle,
          ),
          const Text("Gras")
        ],
      ),
    );
  }
}
