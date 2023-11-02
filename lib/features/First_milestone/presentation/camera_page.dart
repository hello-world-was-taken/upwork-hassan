import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class CameraPage extends StatefulWidget {
  final CameraController cameraController;
  const CameraPage({super.key, required this.cameraController});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CameraPreview(widget.cameraController),
        CustomPaint(
          foregroundPainter: _MyPainter(),
          child: Container(),
        ),
        FloatingActionButton(
          child: Icon(Icons.camera),
          onPressed: () async {
            try {
              final image = await widget.cameraController.takePicture();
              final Directory extDir = await getTemporaryDirectory();
              final String dirpath = '${extDir.path}/Pictures/flutter_test';
              await Directory(dirpath).create(recursive: true);
              final String filePath = '$dirpath/${DateTime.now()}.png';
              File imageFile = File(image.path);
              await imageFile.copy(filePath);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DisplayPictureScreen(imagePath: filePath)));
            } catch (e) {
              print(e);
            }
          },
        )
      ],
    );
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display the Picture')),
      body: Image.file(File(imagePath)),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final width = size.width;
    final height = size.height;
    final rectWidth = width * 0.8;
    final rectHeight = width * 0.6;
    final startX = (width - rectWidth) / 2;
    final startY = (height - rectHeight) / 2;

    final rect = Rect.fromLTWH(startX, startY, rectWidth, rectHeight);
    final path = Path()..addRect(rect);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
