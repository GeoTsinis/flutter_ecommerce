import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ecommerce/utils/dimensions.dart';
import 'package:flutter_ecommerce/widgets/app_column.dart';
import 'package:flutter_ecommerce/widgets/app_icon.dart';
import 'package:flutter_ecommerce/widgets/expandable_text.dart';

import '../../colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Food Image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food1.png"))),
              )),
          //Back arrow and Shopping cart buttons
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          //Food Page Details
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)),
                  color: Colors.white,
                ),
                //Name, stars and info
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Texas Burger"),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(text: "Introduce"),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    //Expandable Text with food description
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                "This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips.This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips. This burger is a very delicius main dish containing beef, with Texas BBQ sauce, tomato and cheese. It comes with fried chips."),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      //Footer
      bottomNavigationBar: Container(
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
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "\$10 | Add to Cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
