import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

void showFontSizeDialogue({
  required Function(double) onTap,
  required double selectedScale,
}) {
  Get.bottomSheet(_FontSize(
    onTap: onTap,
    selectedScale: selectedScale,
  ));
}

class _FontSize extends StatelessWidget {
  final Function(double) onTap;
  final double selectedScale;
  const _FontSize({Key? key, required this.onTap, required this.selectedScale})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          20.heightBox,
          Text(
            "Select Font Size",
            style: context.titleLarge,
          ).centered(),
          20.heightBox,
          ListTile(
            onTap: () {
              onTap(1.08);
            },
            trailing: selectedScale == 1.08
                ? Icon(
                    Icons.check,
                    color: context.primaryColor,
                  )
                : null,
            title: Text("Large"),
          ),
          ListTile(
            onTap: () {
              onTap(1.05);
            },
            trailing: selectedScale == 1.05
                ? Icon(
                    Icons.check,
                    color: context.primaryColor,
                  )
                : null,
            title: Text("Medium"),
          ),
          ListTile(
            onTap: () {
              onTap(1);
            },
            trailing: selectedScale == 1
                ? Icon(
                    Icons.check,
                    color: context.primaryColor,
                  )
                : null,
            title: Text("Regular"),
          ),
          20.heightBox,
        ],
      ),
    );
  }
}
