import 'package:flutter/material.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return _ItemsCard(id: index);
          },
          childCount: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
      ),
    );
  }
}

class _ItemsCard extends StatelessWidget {
  _ItemsCard({super.key, required this.id});

  int id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width / 2 * 0.8,
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 4,
            child: Image.network(
              'https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1625&q=80"',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Text(
            "Super Shoes 1",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Text(
            '12,800yen',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
    ;
  }
}
