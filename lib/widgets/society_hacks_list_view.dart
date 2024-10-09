import 'package:books/utils/data.dart';
import 'package:books/widgets/society_hacks_list_view_item_widget.dart';
import 'package:flutter/material.dart';

class SocietyHacksListView extends StatelessWidget {
  const SocietyHacksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: societyHacksList.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(
        width: 16,
      ),
      itemBuilder: (context, index) => SizedBox(
        width: index == 0 || index == societyHacksList.length - 1
            ? MediaQuery.sizeOf(context).width * 0.297
            : MediaQuery.sizeOf(context).width * 0.255,
        child: Padding(
          padding: EdgeInsets.only(
            left: index == 0 ? 16 : 0,
            right: index == societyHacksList.length - 1 ? 16 : 0,
          ),
          child: SocietyHacksListViewItemWidget(
            bookModel: societyHacksList[index],
          ),
        ),
      ),
    );
  }
}
