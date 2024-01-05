import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/button/widget/drop_down_button.dart';
import 'package:gallery_app/src/features/button/widget/drop_down_form_field.dart';
import 'package:gallery_app/src/features/button/widget/ticket.dart';
import 'package:gallery_app/src/features/button/widget/toggle_button.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/appbar.dart';
import 'package:gallery_app/src/widgets/section.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const XAppBar(title: 'Bottion View'),
      body: XSection(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const XDropDownButton(
              isExpand: true,
            ),
            const XDropDownFormField(),
            Ink(
              decoration: const ShapeDecoration(
                color: AppColors.slate_800,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              child: const IconButton(
                highlightColor: AppColors.slate_800,
                icon: Icon(Icons.add, color: AppColors.slate_50),
                onPressed: null,
              ),
            ),
            buildElevatedButton(title: 'Elevated Button'),
            buildElevatedButtonIcon(title: 'Elevated Button Icon'),
            _buildTextButton(),
            _buildTextButtonIcon(),
            _buildOutlinedButton(),
            _buildOutlinedButtonIcon(),
            _buildClipPath(
                title: 'Material Button',
                style: const TextStyle(
                    color: AppColors.slate_900,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            _buildClipPath(
              title: 'Raw Material Button',
            ),
            const XToggleButton(),
            Ink(
              decoration: const ShapeDecoration(
                color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(Icons.add),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClipPath({required String title, TextStyle? style}) {
    return ClipPath(
      clipper: XTicket(),
      child: Container(
        width: 400,
        height: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: AppColors.gray_500),
        child: Center(
          child: Text(title,
              style: style ??
                  const TextStyle(
                      color: AppColors.slate_900,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }

  Widget buildElevatedButton({required String title}) {
    return SizedBox(
      width: 400,
      child: ElevatedButton(
          onPressed: null,
          style: const ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
              backgroundColor: MaterialStatePropertyAll(AppColors.blue_500)),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                color: AppColors.slate_50,
                fontWeight: FontWeight.w600),
          )),
    );
  }

  Widget buildElevatedButtonIcon({required String title}) {
    return SizedBox(
      width: 400,
      child: ElevatedButton.icon(
          onPressed: null,
          icon: const Icon(
            Icons.account_circle_rounded,
            color: AppColors.slate_50,
          ),
          style: const ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
              backgroundColor: MaterialStatePropertyAll(AppColors.blue_500)),
          label: Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                color: AppColors.slate_50,
                fontWeight: FontWeight.w600),
          )),
    );
  }

  TextStyle _buildTextStyle() {
    return const TextStyle(
        color: AppColors.slate_900, fontSize: 18, fontWeight: FontWeight.w400);
  }

  Widget _buildTextButton() {
    return TextButton(
        onPressed: null,
        child: Text(
          'Text Button',
          style: _buildTextStyle(),
        ));
  }

  Widget _buildTextButtonIcon() {
    return TextButton.icon(
        icon: const Icon(
          Icons.account_circle_rounded,
          color: AppColors.blue_500,
        ),
        onPressed: null,
        label: Text(
          'Text Button',
          style: _buildTextStyle(),
        ));
  }

  Widget _buildOutlinedButton() {
    return SizedBox(
      width: 400,
      child: OutlinedButton(
          onPressed: null,
          style: const ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))))),
          child: Text(
            'Outlined Button',
            style: _buildTextStyle(),
          )),
    );
  }

  Widget _buildOutlinedButtonIcon() {
    return SizedBox(
      width: 400,
      child: OutlinedButton.icon(
          icon: const Icon(
            Icons.account_circle_rounded,
            color: AppColors.blue_500,
          ),
          onPressed: null,
          style: const ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))))),
          label: Text(
            'Outlined Button Icon',
            style: _buildTextStyle(),
          )),
    );
  }
}
