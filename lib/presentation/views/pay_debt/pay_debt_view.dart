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
          child: SizedBox(
            height: 80.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 5.h),
                Column(
                  children: [
                    Text(
                      'Mensalidade Academia Max',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Valor: "),
                        Text("R\$ 55:00",
                            style: TextStyle(color: AppColors.purpleMain)),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: [
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
