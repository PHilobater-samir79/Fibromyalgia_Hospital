import 'package:fibromyalgia_hospital/screens/ui/custom_search_docrors_container.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class DoctorsSearchScreen extends StatefulWidget {
  const DoctorsSearchScreen({super.key});
  static const String routeName = 'DoctorsSearchScreen';

  @override
  State<DoctorsSearchScreen> createState() => _DoctorsSearchScreenState();
}

class _DoctorsSearchScreenState extends State<DoctorsSearchScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomArrowBack(),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          AppStrings.doctors,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomSearchBar(),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TabBar(
                          unselectedLabelColor: AppColors.greyTextColor,
                          labelColor: AppColors.blackTextColor,
                          indicatorColor: AppColors.greenColor,
                          isScrollable: true,
                          tabs: const [
                            Tab(
                              text: 'All',
                            ),
                            Tab(
                              text: 'Dentist',
                            ),
                            Tab(
                              text: 'Cardiology',
                            ),
                            Tab(
                              text: 'physio Therapy',
                            ),
                            Tab(
                              text: 'Nearest',
                            ),
                          ],
                          controller: tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              Center(
                                child: Expanded(
                                  child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return const CustomSearchDoctorsContainer();
                                    },
                                  ),
                                ),
                              ),
                              Center(
                                  child: Expanded(
                                    child: ListView.builder(
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return const CustomSearchDoctorsContainer();
                                      },
                                    ),
                                  )),
                              Center(
                                  child: Expanded(
                                    child: ListView.builder(
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return const CustomSearchDoctorsContainer();
                                      },
                                    ),
                                  )),
                              Center(
                                  child: Expanded(
                                    child: ListView.builder(
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return const CustomSearchDoctorsContainer();
                                      },
                                    ),
                                  )),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
