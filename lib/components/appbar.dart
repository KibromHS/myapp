import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu),
            // color: Colors.teal,
            iconSize: 33,
          );
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.sort),
          iconSize: 33,
          onPressed: () {},
        ),
      ],
      centerTitle: true,
      title: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 38,
        child: TextField(
          onTap: () {
            // showSearch(context: context, delegate: Searching());
          },
          textAlignVertical: TextAlignVertical.center,
          cursorWidth: 1,
          keyboardType: TextInputType.none,
          style: const TextStyle(fontSize: 11),
          decoration: InputDecoration(
            hintText: 'Enter your keyword',
            hintStyle: const TextStyle(color: Colors.black54, fontSize: 14),
            prefixIcon: const Icon(
              Icons.search_outlined,
              color: Colors.black54,
            ),
            contentPadding: const EdgeInsets.all(12.0),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
