import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hinttext: 'Type customer name')),
            SizedBox(width: 15),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hinttext: 'Type customer email')),
          ],
        ),
        SizedBox(height: 25),
        Row(
          children: [
            Expanded(
                child:
                    TitleTextField(title: 'Item name', hinttext: 'Item name')),
            SizedBox(width: 15),
            Expanded(
                child: TitleTextField(title: 'Item mount', hinttext: 'USD')),
          ],
        ),
        SizedBox(height: 25),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
              ),
            ),
            SizedBox(width: 10),

            Expanded(
              child: CustomButton(
                text: 'Send Money',
                background: Color(0xff4EB7F2),
              ),
            ),
          ],
        )
      ],
    );
  }
}
