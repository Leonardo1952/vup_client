import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup_client/presentation/core/app_colors.dart';
import 'package:vup_client/presentation/core/app_text_styles.dart';
import 'package:vup_client/presentation/views/pay_debt/widgets/custom_appbar_pay_debt.dart';

import 'widgets/form_payment_card.dart';

class PayDebtView extends StatelessWidget {
  const PayDebtView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarPayDebt(
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.h),
              Text(
                'Mensalidade Academia Max',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              ),
              const Text('Academia'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Vencimento: "),
                  Text("20/03/2022",
                      style: TextStyle(color: AppColors.purpleMain)),
                ],
              ),
              Text(
                'Pagar via',
                style: AppTextStyles.largeTitleStyle.copyWith(
                  color: AppColors.purpleMain,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FormPaymentCard(name: 'PIX'),
                  FormPaymentCard(name: 'BOLETO'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
