import 'package:asroo_store/core/common/widgets/custom_button.dart';
import 'package:asroo_store/core/common/widgets/custom_text_field.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CraeteNotificationBottomSheet extends StatefulWidget {
  const CraeteNotificationBottomSheet({super.key});

  @override
  State<CraeteNotificationBottomSheet> createState() =>
      _CraeteNotificationBottomSheetState();
}

class _CraeteNotificationBottomSheetState
    extends State<CraeteNotificationBottomSheet> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  TextEditingController productIdController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    productIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextApp(
                text: 'Add Notifications',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
                TextApp(
                text: 'Enter the Notification title',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),

              ),
                SizedBox(
                height: 20.h,
              ),
                    CustomTextField(
              controller: titleController,
              hintText: 'Body',
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please Selected Your Body Name';
                }
                return null;
              },
            ),
              SizedBox(
                height: 20.h,
              ),
                TextApp(
                text: 'Enter the Notification title',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),

              ),
                SizedBox(
                height: 20.h,
              ),
                    CustomTextField(
              controller: bodyController,
              hintText: 'Body',
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please Selected Your Body Name';
                }
                return null;
              },
            ),
              SizedBox(
                height: 20.h,
              ),
                  TextApp(
                text: 'Enter the Notification title',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),

              ),
    SizedBox(
                height: 20.h,
              ),
              CustomTextField(
              controller: productIdController,
              hintText: 'Body',
              keyboardType:TextInputType.number ,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please Selected Your product id Name';
                }
                return null;
              },
            ),
              SizedBox(
                height: 20.h,
              ),
CustomButton(
                      onPressed: () {
                        _validAddNotification(context);
                      },
                      backgroundColor: ColorsDark.white,
                      lastRadius: 20,
                      threeRadius: 20,
                      textColor: ColorsDark.blueDark,
                      text: 'Add a Notification',
                      width: MediaQuery.of(context).size.width,
                      height: 50.h,
              )

            ],
          ),
        ));
  }
  
  void _validAddNotification(BuildContext context) {}
}
