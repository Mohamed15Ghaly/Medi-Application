import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/app_menu/presentation/user_actions_cubit/user_actions_cubit.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/response_font_size.dart';

class UserAccountsHeader extends StatelessWidget {
  const UserAccountsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserActionsCubit, UserActionsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return UserAccountsDrawerHeader(
          decoration: const BoxDecoration(
            color: MediColors.primaryColor,
          ),
          accountName: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                child: FittedBox(
                  child: Icon(
                    Icons.person,
                    color: MediColors.secondaryColor,
                    size: 15,
                  ),
                ),
              ),
              Gap(context.height * .005),
              Flexible(
                child: AutoSizeText(
                  CacheHelper().getData(key: ApiKey.name),
                  style: TextStyle(
                      color: MediColors.secondaryColor,
                      fontSize:
                          getResponseFontSize(context: context, fontSize: 10)),
                ),
              ),
            ],
          ),
          accountEmail: Row(
            children: [
              const Flexible(
                child: FittedBox(
                  child: Icon(
                    Icons.email,
                    color: MediColors.secondaryColor,
                    size: 15,
                  ),
                ),
              ),
              const Gap(5),
              Flexible(
                child: AutoSizeText(
                  CacheHelper().getData(key: ApiKey.email),
                  style: TextStyle(
                    color: MediColors.secondaryColor,
                    fontSize: getResponseFontSize(
                      context: context,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          currentAccountPicture: Hero(
            tag: 'userPhoto',
            child: FittedBox(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: CachedNetworkImageProvider(
                  CacheHelper().getData(key: ApiKey.profilePhoto),
                  
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
