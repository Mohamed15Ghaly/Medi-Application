import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import '../../../../core/cache/cache_helper.dart';
import '../widgets/home_screen_body.dart';
import '../widgets/notification_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
            (_) => ShowCaseWidget.of(context).startShowCase([_one, _two]));
  }

  GlobalKey _one = GlobalKey();
  GlobalKey _two = GlobalKey();
  // GlobalKey _three = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CacheHelper().getData(key: "showcase") == true
            ? Image.asset(
          MediAssets.appLogo,
          width: 30,
          height: 30,
        )
            : Showcase(
            targetPadding: const EdgeInsets.all(8),
            targetBorderRadius: BorderRadius.circular(8),
            key: _one,
            title: "Home",
            description: "This is the home screen",
            child: Image.asset(
              MediAssets.appLogo,
              width: 30,
              height: 30,
            )),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            BlocProvider.of<IndexScreenCubit>(context).drawer();
          },
          icon: Showcase(
              targetPadding: const EdgeInsets.all(8),
              targetBorderRadius: BorderRadius.circular(8),
              title: "Menu",
              description: "This is the menu screen",
              key: _two,
              child: const Icon(Icons.menu)),
        ),
        leadingWidth: 75,
        actions: const [
          NotificationButton(),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: HomeScreenBody(),
        ),
      ),
    );
  }
}
