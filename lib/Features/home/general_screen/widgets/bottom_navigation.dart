import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:team/Features/home/home_screen/widgets/notification_button.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IndexScreenCubit, IndexScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        return BottomNavigationBar(
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_information_outlined),
              label: "Flutter Team",
            ),
            BottomNavigationBarItem(
              icon: NotificationButton(),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: BlocProvider.of<IndexScreenCubit>(context).index,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (value) {
            BlocProvider.of<IndexScreenCubit>(context).changeIndex(value);
          },
          type: BottomNavigationBarType.fixed,
          // elevation: 0,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
