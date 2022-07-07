import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vegan_liverpool/features/shared/widgets/my_scaffold.dart';
import 'package:vegan_liverpool/utils/url.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: "About Us",
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/Vegi-Logo-horizontal.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "We are vegi, your local vegan shopping app!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Buy groceries, takeaways and plant-based products from independent businesses using your vegi wallet.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Follow our journey on our website www.vegiapp.co.uk or on our Instagram or Tiktok @vegi_app",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => launchUrl("https://www.instagram.com/vegi_liverpool/"),
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.grey[400],
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () => launchUrl("https://vm.tiktok.com/ZMNF3ekHX/"),
                      icon: Icon(
                        FontAwesomeIcons.tiktok,
                        color: Colors.grey[400],
                        size: 28,
                      ),
                    ),
                    IconButton(
                      onPressed: () => launchUrl("https://vegiapp.co.uk"),
                      icon: Icon(
                        Icons.launch,
                        color: Colors.grey[400],
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
