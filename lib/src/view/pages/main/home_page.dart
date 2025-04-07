import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_task/src/core/colors/colors.dart';
import 'package:home_task/src/view/widgets/card.dart';
import 'package:home_task/src/view/widgets/task_item_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TOPO
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Ícone menu
                    const Icon(Icons.menu),
                    Row(
                      children: [
                        Stack(
                          children: [
                            const Icon(CupertinoIcons.bell_fill, size: 28),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: MyColors.cardColor,
                          child: const Icon(Icons.person, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Hi User\nManage your tasks',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),

              const SizedBox(height: 24),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomCardWidget(
                  title: 'Manage',
                  subtitle: 'Your House',
                  icon: Icons.home,
                  onPressed: () {
                    print('Clicou no card');
                  },
                ),
              ),

              const SizedBox(height: 32),

              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Pending task',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all >',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: const [
                    TaskItemCardWidget(
                      icon: Icons.lightbulb_outline,
                      iconBackground: MyColors.highlightColor,
                      title: 'Manage lights',
                      subtitle: '● 2 Burnt Lights',
                      date: 'Jan, 3',
                      isAlert: true,
                    ),
                    TaskItemCardWidget(
                      icon: Icons.bed_outlined,
                      iconBackground: MyColors.cardColor,
                      title: 'Clean Bedroom',
                      subtitle: 'Organize and vacuum',
                      date: 'Jan, 1',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
