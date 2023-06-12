// import 'package:flutter/material.dart';
// import 'package:news_app/provider/home_pro.dart';
// import 'package:provider/provider.dart';
// import 'package:sizer/sizer.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class HomePage2 extends StatefulWidget {
//   const HomePage2({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage2> createState() => _HomePage2State();
// }
//
// HomeProvider? providerTrue;
// HomeProvider? providerFalse;
//
// class _HomePage2State extends State<HomePage2> {
//   @override
//   Widget build(BuildContext context) {
//     providerTrue = Provider.of<HomeProvider>(context, listen: true);
//     providerFalse = Provider.of<HomeProvider>(context, listen: false);
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "${providerTrue!.articles!.title}",
//             maxLines: 1,
//
//           ),
//           centerTitle: true,
//           backgroundColor: Color(0xFFB9F3E4),
//         ),
//         backgroundColor: Color(0xFFB9F3E4),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                   height: 40.h,
//                   width: 160.w,
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(10.h),
//                   ),
//                   child: Image.network("${providerTrue!.articles!.urlToImage}",fit: BoxFit.fill,)
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(10),
//               child: Text(
//                 "${providerTrue!.articles!.description}",
//                 maxLines: 6,
//
//               ),
//             ),
//             InkWell(
//               onTap: () async {
//                 await launchUrl(Uri.parse("${providerTrue!.articles!.url}"));
//               },
//               child: Text("Read More...."),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          InAppWebView(
              initialUrlRequest: URLRequest(
                  url:
                  Uri.parse("https://zeenews.india.com/apps"))),
        ],
      ),
    ),);
  }
}

