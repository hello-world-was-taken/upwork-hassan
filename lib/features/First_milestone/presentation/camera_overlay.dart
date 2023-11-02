import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/First_milestone/presentation/widgets/popup_widget.dart';

class CameraOverlay extends StatefulWidget {
  const CameraOverlay({super.key});

  @override
  State<CameraOverlay> createState() => _CameraOverlayState();
}

class _CameraOverlayState extends State<CameraOverlay> {
   bool _showPopup = true;

     @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        _showPopup = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: AppDimension.height(40, context),
              horizontal: AppDimension.width(30, context)
              ),
              child: Column(
                children: [
                  
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("撮影|",
                        
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppDimension.height(30, context)
                        ),),
                        Text(
                          "運転免許証|",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppDimension.height(30, context)
                        ),
                        ),
                        Text("表面",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppDimension.height(30, context)
                        ),
                        )
                      ],
                    ),
                  
                  Container(
                    margin: EdgeInsets.symmetric(vertical: AppDimension.height(20, context)),
                    decoration: BoxDecoration(
          color: Color(0XFF979797),
          borderRadius: BorderRadius.circular(10)
                    ),
                    height: 5,
                    width: double.infinity,
                  ),
                
                  Container(
                    child: Text("表面",
                    style: TextStyle(
                          color: Colors.white,
                          fontSize: AppDimension.height(30, context)
                        )
                    ),
                  ),
                  SizedBox(
                    height: AppDimension.height(120, context),
                  ),
                  Stack(
                    alignment: Alignment.center, 
                    children: [
                      Container(
                        width: AppDimension.width(300, context),
                        child: Image.asset("assets/images/cameraCenter.png",
                        fit: BoxFit.cover,
                        ),
                      ),
                      if (_showPopup)
                        Positioned(
                          // top: AppDimension.height(60, context),
                          // left: AppDimension.width(10, context),
                          child: PopupCard()
                          )
                      
          
                    ],
                  ),
                   SizedBox(
                    height: AppDimension.height(120, context),
                  ),
                  Container(
                    width: AppDimension.width(60, context),
                    height: AppDimension.height(50, context),
                    child: ElevatedButton(
                              onPressed: () {
                                
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(AppDimension.radius(25, context)),
                                ),
                                minimumSize: Size(AppDimension.width(120, context), AppDimension.height(20, context)),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                  size: AppDimension.radius(50, context),
                                ),
                              ),
                            ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}