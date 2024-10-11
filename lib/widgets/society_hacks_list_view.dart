import 'package:books/utils/app_router.dart';
import 'package:books/utils/data.dart';
import 'package:books/widgets/society_hacks_list_view_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SocietyHacksListView extends StatelessWidget {
  const SocietyHacksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: societyHacksList.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => SizedBox(
        width: index == societyHacksList.length - 1
            ? 115 + 18
            : index == 0
                ? 115 + 8
                : 115,
        child: Padding(
          padding: EdgeInsets.only(
            left: index == 0 ? 16 : 10,
            right: index == societyHacksList.length - 1 ? 16 : 0,
          ),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.bookDetailsView,
                extra: societyHacksList[index],
              );
            },
            child: SocietyHacksListViewItemWidget(
              bookModel: societyHacksList[index],
            ),
          ),
        ),
      ),
    );
  }
}
