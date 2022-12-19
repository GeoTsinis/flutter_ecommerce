import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ecommerce/colors.dart';
import 'package:flutter_ecommerce/utils/dimensions.dart';
import 'package:flutter_ecommerce/widgets/app_icon.dart';
import 'package:flutter_ecommerce/widgets/big_text.dart';
import 'package:flutter_ecommerce/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Texas Burger")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food1.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ExpandableTextWidget(
                  text:
                      "This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips.This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips.",
                ),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // quantity controller
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.icon24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.icon24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
          //fav and add to cart button
          Container(
            height: Dimensions.popularFoodFooterSize,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Quantity adj
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.radius20)),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    size: Dimensions.font20,
                    text: "\$10 | Add to Cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
