import 'package:flutter/material.dart';
import 'package:vup_client/presentation/shared/widgets/bottom_menu/bottom_menu.dart';
import 'package:vup_client/presentation/shared/widgets/custom_app_bar.dart';
import 'package:vup_client/presentation/views/main_pages/main_pages_view_model.dart';

class MainPagesView extends StatefulWidget {
  const MainPagesView({Key? key}) : super(key: key);

  @override
  _MainPagesViewState createState() => _MainPagesViewState();
}

class _MainPagesViewState extends State<MainPagesView> {
  final MainPagesViewModel mainPagesViewModel = MainPagesViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "16 de janeiro de 2022",
        onAddTapped: () {},
        context: context,
      ),
      bottomNavigationBar: BottomMenu(mainPagesViewModel: mainPagesViewModel),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: mainPagesViewModel.pagesViewController,
        children: [
          //const HomeView(),
          Container(color: Colors.orange),
          Container(color: Colors.grey),
          Container(color: Colors.blue),
          Container(color: Colors.yellow),
        ],
      ),
    );
  }
}