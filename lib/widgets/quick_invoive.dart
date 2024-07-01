import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_voice_header.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';


class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 20),
          LatestTransaction(),
          const Divider(height: 48),
          const TitleTextField(title: 'Customer name', hinttext: 'Type customer name'),

        ],
      ),
    );
  }
}
