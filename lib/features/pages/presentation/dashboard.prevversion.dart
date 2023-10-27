import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = new ScrollController();

    var reachEnd = false;

    _listener() {
      final maxScroll = _controller.position.maxScrollExtent;
      final minScroll = _controller.position.minScrollExtent;
      if (_controller.offset >= maxScroll) {
        setState(() {
          reachEnd = true;
        });
      }

      if (_controller.offset <= minScroll) {
        setState(() {
          reachEnd = false;
        });
      }
    }

    @override
    void initState() {
      _controller.addListener(_listener);
      super.initState();
    }

    @override
    void dispose() {
      _controller.removeListener(_listener);
      _controller.dispose();
      super.dispose();
    }

    return Stack(children: [
      Positioned(
        top: 0.0,
        bottom: 50.0,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            LoggedInAppBar(
              imageUrl: "",
            ),
          ],
        ),
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            child: Text("button"),
            onPressed: reachEnd ? () => {} : () => {},
          ))
    ]);
  }
}

class LoggedInAppBar extends StatelessWidget {
  const LoggedInAppBar({super.key, required String imageUrl});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        key: key,
        title: Text(
          "Himatif App",
          style: TextStyle(fontFamily: 'Strasua'),
        ),
        backgroundColor: Color(0xff3a3637),
        actions: <Widget>[
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: CachedNetworkImage(
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                  imageUrl: "...",
                  placeholder: (context, url) => Image(
                      image:
                          AssetImage("assets/images/profile_placeholder.jpg"))),
            ),
          )
        ]);
  }
}
