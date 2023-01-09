import 'package:flutter/material.dart';
import 'package:furnitureui/core/route/app_route_name.dart';
import 'package:furnitureui/core/theme/app_color.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img_started.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Column(
          children: [
            // --------- Title ----------------
            Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "We Provide High Quality Products Just For You!",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: AppColor.white),
              ),
            ),
            // ----------- Title End ----------------------
            const Spacer(),
            // ------------------ Button To navigate to home Screen ------------------
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouteName.home);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                // backgroundColor: AppColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
              ),
              child: Text(
                "Get Started",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: AppColor.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // ------------------ Button To navigate to home Screen Code End ------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ------------- Already Have An Account ---------------------
                Text(
                  "Already have an Account ?",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: AppColor.white),
                ),
                const SizedBox(
                  width: 8,
                ),
                // ------------- Already Have An Account Code End ---------------------

                // ------------- Login Code Start ---------------------
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login Here",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: AppColor.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
                // ------------- Login Code End ---------------------
              ],
            )
          ],
        )),
      ),
    );
  }
}
