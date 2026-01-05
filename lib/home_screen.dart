import 'package:flutter/material.dart';
import '../constants/app_image.dart';
import '../constants/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final categories = const [
    _Category(name: 'Burgers', iconPath: AppIcons.hamburger),
    _Category(name: 'Pizza', iconPath: AppIcons.pizza),
    _Category(name: 'Snacks', iconPath: AppIcons.fries),
    _Category(name: 'Sushi', iconPath: AppIcons.sushi),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _HeaderRow(),
              const SizedBox(height: 18),
              const Text(
                'Main\nCategories',
                style: TextStyle(
                  fontSize: 28,
                  height: 1.1,
                  fontWeight: FontWeight.w800,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 14),

              // Categories
              SizedBox(
                height: 92,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (context, i) {
                    final c = categories[i];
                    final selected = i == selectedIndex;

                    return GestureDetector(
                      onTap: () => setState(() => selectedIndex = i),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 180),
                        width: 78,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: selected ? AppColors.primary : AppColors.white,
                          borderRadius: BorderRadius.circular(AppSizes.radius),
                          boxShadow: selected
                              ? AppStyles.shadow
                              : const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _AssetIcon(
                              c.iconPath,
                              size: 22,
                              tint: selected ? AppColors.white : null,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              c.name,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: selected
                                    ? AppColors.white
                                    : AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 16),

              // Big banner card
              _FoodBannerCard(
                imagePath: AppImages.burgerRestaurant,
                timeText: '25-30 min',
              ),

              const SizedBox(height: 14),

              // Title + meta
              const Text(
                'Burgers Story',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  _AssetIcon(AppIcons.star, size: 14),
                  const SizedBox(width: 6),
                  const Text(
                    '4.7',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Burgers  ·  Snacks  ·  \$\$',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkGray,
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // Fake bottom bar
              const _BottomBarFake(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _CircleIcon(iconPath: AppIcons.location),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Text(
              '745 Lincoln Pl',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        _CircleIcon(iconPath: AppIcons.list),
      ],
    );
  }
}

class _FoodBannerCard extends StatelessWidget {
  final String imagePath;
  final String timeText;

  const _FoodBannerCard({required this.imagePath, required this.timeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radius),
        boxShadow: AppStyles.shadow,
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.92),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                timeText,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          // small dots (fake)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  _Dot(active: true),
                  _Dot(active: false),
                  _Dot(active: false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomBarFake extends StatelessWidget {
  const _BottomBarFake();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 14,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _BottomIcon(AppIcons.list),
          _BottomIcon(AppIcons.search),
          _BottomIcon(AppIcons.like),
          _BottomIcon(AppIcons.user),
        ],
      ),
    );
  }
}

class _BottomIcon extends StatelessWidget {
  final String path;
  const _BottomIcon(this.path);

  @override
  Widget build(BuildContext context) {
    return _AssetIcon(path, size: 22);
  }
}

class _Dot extends StatelessWidget {
  final bool active;
  const _Dot({required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: active ? 10 : 8,
      height: active ? 10 : 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: active ? AppColors.white : AppColors.white.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
    );
  }
}

class _CircleIcon extends StatelessWidget {
  final String iconPath;
  const _CircleIcon({required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: const BoxDecoration(
        color: AppColors.lightGray,
        shape: BoxShape.circle,
      ),
      child: Center(child: _AssetIcon(iconPath, size: 20)),
    );
  }
}

class _AssetIcon extends StatelessWidget {
  final String path;
  final double size;
  final Color? tint;

  const _AssetIcon(this.path, {required this.size, this.tint});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, width: size, height: size, color: tint);
  }
}

class _Category {
  final String name;
  final String iconPath;
  const _Category({required this.name, required this.iconPath});
}
