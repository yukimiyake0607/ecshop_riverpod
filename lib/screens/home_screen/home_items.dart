import 'package:flutter/material.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: const Text('Home Item'),
          );
        },
        childCount: 10,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
    );
  }
}
