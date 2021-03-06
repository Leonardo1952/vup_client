import 'package:flutter/material.dart';
import 'package:vup_client/presentation/core/app_colors.dart';
import 'package:vup_client/presentation/core/app_text_styles.dart';
import 'package:vup_client/presentation/shared/widgets/app_button_widget.dart';
import 'package:vup_client/presentation/views/auth/auth_view.dart';
import 'package:vup_client/presentation/views/auth/widgets/input_text_form_field_widget.dart';
import 'package:vup_client/presentation/views/auth/widgets/text_button_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.purplew200,
              AppColors.purplew300,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 40.0,
            bottom: 20,
            top: 150,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/png/logo.png', height: 50),
                  const Divider(color: Colors.transparent),
                  Text(
                    'Cadastro',
                    style: AppTextStyles.largeTitleStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  const InputTextFormFieldWidget(labelText: 'Email'),
                  const Divider(color: Colors.transparent),
                  const InputTextFormFieldWidget(labelText: 'Senha'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButtonComponent(
                        text: 'Entrar com Google',
                        onTapped: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  AppButton(
                    label: 'Cadastrar',
                    onTapped: () {},
                  ),
                  TextButtonComponent(
                    text: 'J?? tem conta? Fa??a o login!',
                    onTapped: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const AuthView(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
