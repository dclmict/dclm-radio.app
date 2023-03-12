import 'package:dclm_radio/routes/route_view.dart';
import 'package:dclm_radio/signUp_screen.dart';
import 'package:dclm_radio/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dclm_radio/routes/route_base.dart';


void main() {
  runApp(const DCLMRadioApp());
}

class DCLMRadioApp extends StatelessWidget {
  
  const DCLMRadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return GetMaterialApp(
      // Please leave debugShowCheckedModeBanner commented out
      // debugShowCheckedModeBanner: false,
      title: 'DCLM Radio',
//<<<<<<< HEAD
      //theme: AppTheme.darkTheme,
//=======
      theme: AppTheme.theme(),
      initialRoute: RoutesBase.signUpScreen,
      getPages:RouteView.pages,
      //home: const SignUpScreen(),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("DCLM Radio App"),
//             const SizedBox(
//               key: Key('sample_space'),
//               height: 10.0,
//             ),
//             const Card(
//               child: Padding(
//                 padding: EdgeInsets.all(12.0),
//                 child: Text("Hello World"),
//               ),
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text("Text Button"),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text("Elevated Button"),
//             )
//           ],
//         ),
//       ),
// //>>>>>>> d37910ce65e8545a8ea50e4e9d7ac441ea4e80ad
//     );
//   }
// }
