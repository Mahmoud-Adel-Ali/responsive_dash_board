import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';

import 'transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          SizedBox(height: 20),
          TransactionHistory(),
        ],
      ),
    );
  }
}
