import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XBoxShape extends StatefulWidget {
  const XBoxShape({super.key});

  @override
  State<XBoxShape> createState() => _XBoxShapeState();
}

class _XBoxShapeState extends State<XBoxShape> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        width: 400,
        height: 100,
        decoration: BoxDecoration(
            color: AppColors.slate_50,
            border: Border.all(color: AppColors.gray_400, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    color: AppColors.green_100,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: const Center(
                    child: Text(
                  '10k',
                  style: TextStyle(
                      color: AppColors.green_700,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
            Column(
              children: List.generate(
                  100 ~/ 10,
                  (index) => Expanded(
                        child: Container(
                          color: index % 2 == 0
                              ? AppColors.transparent
                              : AppColors.gray_400,
                          height: 2,
                          width: 1,
                        ),
                      )),
            ),
            Flexible(
              flex: 3,
              child: Container(
                height: 80,
                width: 220,
                color: AppColors.slate_50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GIOITHIEU',
                            style: TextStyle(
                                color: AppColors.slate_900,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Giảm giá 12k cho đơn hàng',
                            style: TextStyle(
                                color: AppColors.slate_900,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Kết thúc: 31/12/2021',
                            style: TextStyle(
                                color: AppColors.gray_600,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Checkbox(
                        value: isChecked,
                        shape: const CircleBorder(
                            side: BorderSide(
                                color: AppColors.indigo_700, width: 1)),
                        onChanged: (value) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double sideRadius = size.height / 8;
    double radius = size.height * 3 / 16;
    double mid = size.width * 0.27;
    double borderRadius = size.height / 10;

    path.moveTo(borderRadius, 0);

    path.lineTo(mid - sideRadius, 0);

    path.cubicTo(mid - sideRadius, 0, mid, radius, mid + sideRadius, 0);

    path.lineTo(size.width - borderRadius, 0);

    path.cubicTo(
        size.width - borderRadius, 0, size.width, 0, size.width, borderRadius);
    path.lineTo(size.width, size.height - borderRadius);
    path.cubicTo(size.width, size.height - borderRadius, size.width,
        size.height, size.width - borderRadius, size.height);
    path.lineTo(mid + sideRadius, size.height);

    path.cubicTo(mid + sideRadius, size.height, mid, size.height - radius,
        mid - sideRadius, size.height);

    path.lineTo(borderRadius, size.height);

    path.cubicTo(
        borderRadius, size.height, 0, size.height, 0, size.height - radius);
    path.lineTo(0, borderRadius);
    path.cubicTo(0, borderRadius, 0, 0, borderRadius, 0);

    path.moveTo(mid, radius);
    path.lineTo(mid, size.height - radius);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
