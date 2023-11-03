import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class ImageGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          // Desktop layout
          return DesktopImageGridItem();
        } else {
          // Mobile layout
          return MobileImageGridItem();
        }
      },
    );
  }
}

class DesktopImageGridItem extends StatefulWidget {
  const DesktopImageGridItem({super.key});

  @override
  State<DesktopImageGridItem> createState() => _DesktopImageGridItemState();
}

class _DesktopImageGridItemState extends State<DesktopImageGridItem> {
  int? hoveredIndex;

  void setHoveredIndex(int idx) {
    setState(() {
      hoveredIndex = idx;
    });
  }

  void clearHoveredIndex() {
    setState(() {
      hoveredIndex = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            "まずは、カテゴリーから買取価格をチェックする。",
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHoverContainer(0, 'assets/images/1.png', context),
            Column(
              children: [
                _buildHoverContainer(1, 'assets/images/2.png', context),
                _buildHoverContainer(2, 'assets/images/3.png', context),
              ],
            ),
            Column(
              children: [
                _buildHoverContainer(3, 'assets/images/4.png', context),
                _buildHoverContainer(4, 'assets/images/5.png', context),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHoverContainer(
      int index, String imagePath, BuildContext context) {
    return Container(
      width: AppDimension.width(80, context),
      height: (index == 0)
          ? AppDimension.height(400, context)
          : AppDimension.height(200, context),
      margin: EdgeInsets.symmetric(
        vertical: AppDimension.height(5, context),
        horizontal: AppDimension.width(5, context),
      ),
      child: MouseRegion(
        onEnter: (event) {
          setHoveredIndex(index);
        },
        onExit: (event) {
          clearHoveredIndex();
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          transform: Matrix4.identity()
            ..scale(hoveredIndex == index ? 0.9 : 1.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimension.width(5, context)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimension.width(5, context)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class MobileImageGridItem extends StatefulWidget {
  const MobileImageGridItem({Key? key}) : super(key: key);

  @override
  _MobileImageGridItemState createState() => _MobileImageGridItemState();
}

class _MobileImageGridItemState extends State<MobileImageGridItem> {
  int? hoveredIndex;

  void setHoveredIndex(int idx) {
    setState(() {
      hoveredIndex = idx;
    });
  }

  void clearHoveredIndex() {
    setState(() {
      hoveredIndex = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            "まずは、カテゴリーから買取価格をチェックする。",
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        _buildHoverContainer(0, 'assets/images/1.png', context),
        _buildHoverContainer(1, 'assets/images/2.png', context),
        _buildHoverContainer(2, 'assets/images/3.png', context),
        _buildHoverContainer(3, 'assets/images/4.png', context),
        _buildHoverContainer(4, 'assets/images/5.png', context),
      ],
    );
  }

  Widget _buildHoverContainer(
      int index, String imagePath, BuildContext context) {
    return Container(
      width: AppDimension.relativeWidth(80, context),
      height: (index == 0)
          ? AppDimension.height(400, context)
          : AppDimension.height(200, context),
      margin: EdgeInsets.symmetric(
        vertical: AppDimension.height(5, context),
        horizontal: AppDimension.width(5, context),
      ),
      child: MouseRegion(
        onEnter: (event) {
          setHoveredIndex(index);
        },
        onExit: (event) {
          clearHoveredIndex();
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          transform: Matrix4.identity()
            ..scale(hoveredIndex == index ? 0.9 : 1.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimension.width(5, context)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimension.width(5, context)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
