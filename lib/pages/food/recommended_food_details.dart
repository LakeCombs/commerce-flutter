import 'package:commerce/utils/colors.dart';
import 'package:commerce/utils/dimensions.dart';
import 'package:commerce/widgets/app_icon.dart';
import 'package:commerce/widgets/big_text.dart';
import 'package:commerce/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height20),
              child: Container(
                child: Center(
                  child: BigText(
                    text: "Chinese Side",
                    size: Dimensions.font26,
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.radius20,
                    ),
                    topRight: Radius.circular(
                      Dimensions.radius20,
                    ),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text('Recommended Food'),
              background: Image.asset(
                'assets/image/food1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: Column(
                children: [
                  Container(
                    child: ExpandableTextWidget(
                        text:
                            "Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and  spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and  spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and  spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and delicious manner Chicken spiced in a nice and"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              bottom: Dimensions.height10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                icon: Icons.remove,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.iconSize24,
              ),
              BigText(
                text: "${12.88} + ${0.88}",
                color: AppColors.mainBlackColor,
                size: Dimensions.font26,
              ),
              AppIcon(
                icon: Icons.add,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.iconSize24,
              )
            ],
          ),
        ),
        Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              right: Dimensions.width20,
              left: Dimensions.width20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius20 * 2),
                topLeft: Radius.circular(Dimensions.radius20 * 2)),
            color: AppColors.buttonBackgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius20,
                    ),
                    color: Colors.white),
                child: Icon(
                  Icons.favorite,
                  color: AppColors.mainColor,
                  size: Dimensions.iconSize24,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor,
                ),
                child: BigText(
                  text: "${10}  | Add to cart",
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
