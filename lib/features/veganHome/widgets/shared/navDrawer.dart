import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vegan_liverpool/common/router/routes.gr.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/shared/logoutDialog.dart';
import 'package:vegan_liverpool/generated/l10n.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/viewsmodels/drawer.dart';
import 'package:vegan_liverpool/utils/url.dart';

class NavDrawer extends StatefulWidget {
  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DrawerViewModel>(
      distinct: true,
      converter: DrawerViewModel.fromStore,
      builder: (_, viewModel) {
        return Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: CachedNetworkImage(
                        width: 50,
                        height: 50,
                        imageUrl: viewModel.avatarUrl,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => CircleAvatar(
                          backgroundImage: AssetImage('assets/images/anom.png'),
                          radius: 30,
                        ),
                        imageBuilder: (context, imageProvider) => Image(
                          image: imageProvider,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Hi ${viewModel.firstName()}!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                text: viewModel.gbpxBalance,
                                children: [
                                  TextSpan(
                                    text: " ${I10n.of(context).gBPx}",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Text.rich(
                              TextSpan(
                                text: viewModel.pplBalance,
                                children: [
                                  TextSpan(
                                    text: " PPL",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: themeShade300,
                ),
              ),
              ListTile(
                leading: Icon(Icons.timer_outlined),
                title: Text('Scheduled Order'),
                onTap: () {
                  context.router.push(ScheduledOrdersPage());
                },
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: Text('Top Up Wallet'),
                onTap: () {
                  context.router.push(TopUpScreen());
                },
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.clockRotateLeft),
                title: Text('My Orders'),
                onTap: () {
                  context.router.push(AllOrdersPage());
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Account'),
                onTap: () => context.router.push(ProfileScreen()),
              ),
              ListTile(
                  leading: Icon(Icons.quiz),
                  title: Text('FAQs'),
                  onTap: () => context.router.push(FAQScreen())),
              ListTile(
                leading: Icon(Icons.help_sharp),
                title: Text('About Us'),
                onTap: () => context.router.push(AboutScreen()),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => LogoutDialog(),
                  barrierDismissible: true,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => launchUrl(
                            "https://www.instagram.com/vegi_liverpool/"),
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.grey[400],
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () =>
                            launchUrl("https://vm.tiktok.com/ZMNF3ekHX/"),
                        icon: Icon(
                          FontAwesomeIcons.tiktok,
                          color: Colors.grey[400],
                          size: 28,
                        ),
                      ),
                      IconButton(
                        onPressed: () => launchUrl("https://vegiapp.co.uk"),
                        icon: Icon(
                          Icons.launch,
                          color: Colors.grey[400],
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
