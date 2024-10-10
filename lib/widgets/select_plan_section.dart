import 'package:books/widgets/monthly_plan_widget.dart';
import 'package:books/widgets/yearly_plan_widget.dart';
import 'package:flutter/material.dart';

class SelectPlanSection extends StatefulWidget {
  const SelectPlanSection({
    super.key,
  });

  @override
  State<SelectPlanSection> createState() => _SelectPlanSectionState();
}

class _SelectPlanSectionState extends State<SelectPlanSection> {
  int index = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MonthlyPlanWidget(
          isSelected: index == 0 ? true : false,
          onTap: () {
            if (index == -1 || index == 1) {
              setState(() {
                index = 0;
              });
            } else {
              setState(() {
                index = -1;
              });
            }
          },
        ),
        const SizedBox(
          height: 10,
        ),
        YearlyPlanWidget(
          isSelected: index == 1 ? true : false,
          onTap: () {
            if (index == -1 || index == 0) {
              setState(() {
                index = 1;
              });
            } else {
              setState(() {
                index = -1;
              });
            }
          },
        ),
      ],
    );
  }
}
