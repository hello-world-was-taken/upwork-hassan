import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/popup_widget.dart';

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
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 40.h,
            horizontal: 30.w
            ),
            child: Column(
              children: [
                
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("撮影|",
                      
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.h
                      ),),
                      Text(
                        "運転免許証|",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.h
                      ),
                      ),
                      Text("表面",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.h
                      ),
                      )
                    ],
                  ),
                
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.h),
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
                        fontSize: 30.h
                      )
                  ),
                ),
                SizedBox(
                  height: 120.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: 300.w,
                      child: Image.asset("assets/images/cameraCenter.png",
                      fit: BoxFit.cover,
                      ),
                    ),
                    if (_showPopup)
                      Positioned(
                        top: 60.h,
                        left: 10.w,
                        child: PopupCard()
                        )
                    

                  ],
                ),
                 SizedBox(
                  height: 120.h,
                ),
                ElevatedButton(
  onPressed: () {
    
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    minimumSize: Size(120.w, 80.h),
  ),
  child: Icon(
    Icons.camera_alt,
    color: Colors.black,
    size: 60.h,
  ),
)
              ],
            ),
          ),
        ),
      ),
    );
  }
}