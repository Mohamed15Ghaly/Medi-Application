import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/views/breast_cancer_screen.dart';
import 'package:team/Features/diseases/presentation/views/heart_disease_screen.dart';
import 'package:team/Features/diseases/presentation/views/parkinson_screen.dart';
import 'package:team/components/response_font_size.dart';
import 'package:team/core/utils/medi_colors.dart';
import '../../../diseases/presentation/views/diabetes_screen.dart';
import 'home_app_headrer.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                    child: HomeAppHeader(tabController: _tabController)),
                SliverAppBar(
                  pinned: true,
                  backgroundColor: MediColors.secondaryColor,
                  elevation: 2,
                  toolbarHeight: 50,
                  flexibleSpace: TabBar(
                    // indicator: const BoxDecoration(),
                      controller: _tabController,
                      labelColor: MediColors.primaryColor,
                      unselectedLabelColor: MediColors.fourthColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: TextStyle(
                        fontSize: GetResponseFontSize(context: context, fontsize: 16),
                        fontWeight: FontWeight.bold,
                        fontFamily: "ClashDisplay",
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: GetResponseFontSize(context: context, fontsize: 16),
                        fontFamily: "ClashDisplay",
                      ),
                      isScrollable: true,
                      tabs: const [
                        Tab(text: "Diabetes"),
                        Tab(text: "Parkinson"),
                        Tab(text: "Breast Cancer"),
                        Tab(text: "Heart Disease"),
                      ]),
                ),
              ];
            },
            body: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  DiabetesScreen(),
                  ParkinsonScreen(),
                  BreastCancerScreen(),
                  HeartDiseaseScreen()
                ])),
      ),
    );
  }
}
