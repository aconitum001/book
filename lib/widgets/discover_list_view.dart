import 'package:books/utils/data.dart';
import 'package:books/widgets/discover_list_view_item_widget.dart';
import 'package:flutter/material.dart';

class DiscoverListView extends StatelessWidget {
  const DiscoverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: discoveryList.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(
          right: index < discoveryList.length - 1 ? 10 : 16,
          left: index == 0 ? 16 : 0,
        ),
        child: AspectRatio(
          aspectRatio: 97.5 / 117,
          child: DiscoverListViewItemWidget(
            bookModel: discoveryList[index],
          ),
        ),
      ),
    );
  }
}
