part of '../main_section.dart';

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> navNames = [
      getLang(context, 'HOME'),
      getLang(context, 'ABOUT US'),
      getLang(context, 'OUR SERVICES'),
      getLang(context, 'PARTNERS OF SUCCESS'),
      getLang(context, 'CONTACT'),
    ];
    final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      child: Material(
        color: appProvider.isDark ? Colors.grey[900] : Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: NavBarLogo(),
            ),
            const Divider(),
            ListTile(
              leading: Icon(
                Icons.light_mode,
                color: AppTheme.c!.primary!,
              ),
              title: const Text(
                "Dark Mode",
              ),
              trailing: Switch(
                inactiveTrackColor: Colors.grey,
                value: appProvider.isDark,
                onChanged: (value) {
                  appProvider
                      .setTheme(value ? ThemeMode.dark : ThemeMode.light);
                },
                activeColor: AppTheme.c!.primary,
              ),
            ),
            const Divider(),
            ...navNames.asMap().entries.map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                        hoverColor: AppTheme.c!.primary!.withAlpha(70),
                        onPressed: () {
                          scrollProvider.scrollMobile(e.key);
                          Navigator.pop(context);
                        },
                        child: Center()),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
