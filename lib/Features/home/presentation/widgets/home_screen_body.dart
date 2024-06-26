import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/views/breast_cancer_screen.dart';
import 'package:team/Features/diseases/presentation/views/heart_disease_screen.dart';
import 'package:team/Features/diseases/presentation/views/parkinson_screen.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/response_font_size.dart';
import '../../../diseases/presentation/views/diabetes_screen.dart';
import 'home_app_header.dart';

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

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: homeNestedScrollView(),
      ),
    );
  }

  NestedScrollView homeNestedScrollView() {
    return NestedScrollView(
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
                  controller: _tabController,
                  labelColor: MediColors.primaryColor,
                  unselectedLabelColor: MediColors.fourthColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextStyle(
                    fontSize:
                        getResponseFontSize(context: context, fontSize: 16),
                    fontWeight: FontWeight.bold,
                    fontFamily: "ClashDisplay",
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize:
                        getResponseFontSize(context: context, fontSize: 16),
                    fontFamily: "ClashDisplay",
                  ),
                  isScrollable: true,
                  tabs: const [
                    Tab(text: "Diabetes"),
                    Tab(text: "Heart Disease"),
                    Tab(text: "Parkinson"),
                    Tab(text: "Breast Cancer"),
                  ]),
            ),
          ];
        },
        body: TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              DiabetesScreen(),
              HeartDiseaseScreen(),
              ParkinsonScreen(),
              BreastCancerScreen(),
            ]));
  }
}
