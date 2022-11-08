import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_screen_goviral_workspace/presentation/widgets/tff.dart';
import 'package:task_screen_goviral_workspace/shared/constants/branch_icon.dart';
import 'package:task_screen_goviral_workspace/shared/constants/colors.dart';
import 'package:task_screen_goviral_workspace/shared/constants/double_number.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.2.h,
            child: Stack(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 20.w, right: 20.w, bottom: 55.h),
                  height: size.height * 0.2.h - 27.h,
                  decoration: const BoxDecoration(
                    color: ColorsApp.kPeimaryColor,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hello Taylor,',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: ColorsApp.kWhite,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Let\'s Learn More About Plants',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: ColorsApp.kWhite,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage('assets/images/profileImage.jpg'),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0.h,
                  left: 0.w,
                  right: 0.w,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                        horizontal: DoubleNumber.kDefaultPadding.w),
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: ColorsApp.kWhite,
                      borderRadius: BorderRadius.circular(30.0.r),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50.0.r,
                          color: ColorsApp.kPeimaryColor.withOpacity(0.23),
                        )
                      ],
                    ),
                    child: const CustomTextField(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0.h,
              left: 10.w,
            ),
            child: Row(
              children: [
                Container(
                  width: 150.w,
                  height: 100.h,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: ColorsApp.kPeimaryColor.withOpacity(0.6),
                      blurRadius: 10.r,
                    ),
                  ]),
                  child: Card(
                    color: ColorsApp.kPeimaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: ColorsApp.kWhite,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        const Text(
                          'IDENTIFY',
                          style: TextStyle(
                            color: ColorsApp.kWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  height: 100.h,
                  child: Card(
                    color: ColorsApp.kWhite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Branch.git_branch,
                          size: 30,
                          color: ColorsApp.kPeimaryColor,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Text(
                          'SPECISES',
                          style: TextStyle(
                              color: ColorsApp.kBlack,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  height: 100.h,
                  child: Card(
                    color: ColorsApp.kWhite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.article,
                          size: 30,
                          color: ColorsApp.kPeimaryColor,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Text(
                          'ARTICLES',
                          style: TextStyle(
                              color: ColorsApp.kBlack,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0.h, left: 25.w),
              child: Text(
                'Plant Types',
                style: TextStyle(
                  color: ColorsApp.kBlack,
                  fontSize: 25.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0.h, left: 25.w),
              child: Row(
                children: [
                  buildContainerPlantTypes(),
                  SizedBox(
                    width: 10.w,
                  ),
                  buildContainerPlantTypes(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0.h, left: 25.w),
              child: Text(
                'Photography',
                style: TextStyle(
                  color: ColorsApp.kBlack,
                  fontSize: 25.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0.h, left: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 170.w,
                    height: 180.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/image_2.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 170.w,
                    height: 180.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/image_3.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 170.w,
                    height: 180.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/image_2.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainerPlantTypes() {
    return Stack(
      children: [
        Container(
          width: 400.w,
          height: 180.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/bottom_img_1.png',
              ),
            ),
          ),
        ),
        Positioned(
          top: 110.h,
          bottom: 20.h,
          right: 200.w,
          left: 0.w,
          child: Column(
            children: [
              Text(
                'Home Plants',
                style: TextStyle(
                  color: ColorsApp.kWhite,
                  fontSize: 25.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '68 Types of Plants',
                style: TextStyle(
                    color: ColorsApp.kWhite, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
