import 'package:flutter/material.dart';
import 'package:session4/widgets/CustomContainer.dart';

class customListView extends StatelessWidget {
  const customListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomContainer();
      },
    );
  }
}

class customGridView extends StatelessWidget {
  const customGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomContainer();
      },
    );
  }
}
