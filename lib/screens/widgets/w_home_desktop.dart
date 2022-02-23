import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../components/custom_text_button.dart';
import '../../core/theme.dart';
import 'w_recent_post_item_desktop.dart';
import 'w_featured_item_desktop.dart';

class WHomeDesktop extends StatelessWidget {
  const WHomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const SizedBox(height: 27),
            /// text buttons ['Work', 'Blog', 'Contact']
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  text: textWork,
                  onPressed: () {},
                ),
                const SizedBox(width: 33),
                CustomTextButton(
                  text: textBlog,
                  onPressed: () {},
                ),
                const SizedBox(width: 33),
                CustomTextButton(
                  text: textContact,
                  onPressed: () {},
                ),
                const SizedBox(width: 60),
              ],
            ),
            const SizedBox(height: 140),
            /// man info section ['Who am I', 'Description', 'Image', 'Download']
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 148),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints:const BoxConstraints(maxWidth: 484),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textWhoAmI,
                              maxLines: 2,
                              style: AppStyles.styWhoAmIDesktop,
                            ),
                            const SizedBox(height: 40),
                            Text(
                              textAboutMe,
                              maxLines: 4,
                              style: AppStyles.styAboutMe,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        assetsManImage,
                        width: 243,
                        height: 243,
                      ),
                    ],
                  ),
                  const SizedBox(height: 38),
                  /// download button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: secondaryColor,
                      padding: const EdgeInsets.symmetric(
                        vertical: 17,
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      textDownloadResume,
                      style: AppStyles.styWhite20W500,
                    ),
                  ),
                  const SizedBox(height: 71),
                ],
              ),
            ),
          ],
        ),
        Container(
          color: bgColor,
          height: 396,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 148, right: 148),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(textRecentPosts, style: AppStyles.styRecentPosts),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        textViewAll,
                        style: AppStyles.styBlueTextButton,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                height: 278,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.stylus,
                      PointerDeviceKind.unknown,
                    },
                  ),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SizedBox(width: 148),
                      WRecentPostItemDesktop(
                        title: textPostTitle1,
                        topic: textPostTopic1,
                      ),
                      SizedBox(width: 20),
                      WRecentPostItemDesktop(
                        title: textPostTitle2,
                        topic: textPostTopic1,
                      ),
                      SizedBox(width: 20),
                      WRecentPostItemDesktop(
                        title: textPostTitle1,
                        topic: textPostTopic1,
                      ),
                      SizedBox(width: 20),
                      WRecentPostItemDesktop(
                        title: textPostTitle2,
                        topic: textPostTopic1,
                      ),
                      SizedBox(width: 148),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: clrWhite,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 148, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textFeaturedWorks,
                style: AppStyles.styRecentPosts,
              ),
              const SizedBox(height: 22),
              const WFeaturedItemDesktop(
                img: assetsFeatured1,
                title: textFeaturedTitle1,
                topic: textFeaturedTopic1,
              ),
              const SizedBox(height: 31),
              const WFeaturedItemDesktop(
                img: assetsFeatured2,
                title: textFeaturedTitle2,
                topic: textFeaturedTopic2,
              ),
              const SizedBox(height: 31),
              const WFeaturedItemDesktop(
                img: assetsFeatured3,
                title: textFeaturedTitle3,
                topic: textFeaturedTopic3,
              ),
              const SizedBox(height: 83),
            ],
          ),
        ),
        Container(
          color: clrWhite,
          height: 182,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(assetsFb),
                    const SizedBox(width: 35),
                    SvgPicture.asset(assetsInsta),
                    const SizedBox(width: 35),
                    SvgPicture.asset(assetsTwitter),
                    const SizedBox(width: 35),
                    SvgPicture.asset(assetsLinkedin),
                  ],
                ),
                const SizedBox(height: 26),
                Text(textCopyright, style: AppStyles.styCopyright),
              ],
            ),
          ),
        )
      ],
    );
  }
}
