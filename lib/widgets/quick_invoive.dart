import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_grid_form.dart';
import 'package:responsive_dash_board/widgets/quick_voice_header.dart';


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
          const Divider(height: 48,color: Color(0xffF1F1F1),),
          const QuickInvoiceForm(),
            
        ],
      ),
    );
  }
}
