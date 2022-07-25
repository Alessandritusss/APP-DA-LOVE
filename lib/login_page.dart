import 'package:flutter/material.dart';
import 'package:lovepeople_app/widget_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 1, 247),
      body: Column(
        children: [
          logoWidget(),
          loginWidget(),
          NewUser(),
        ],
      ),
    );
  }
}







// Widget loginWidget() {
//   final TextEditingController _loginController = TextEditingController();
//   final _formkey = GlobalKey<FormState>();
//   return Form(
//       key: _formkey,
//       child: Column(
//         children: <Widget>[
//           const Text(
//             'Que bom que voltou!',
//             style: TextStyle(
//               fontSize: 30,
//               color: Colors.white,
//             ),
//           ),
//           Container(
//             child: TextFormField(
//               controller: _loginController,
//               validator: (value) {
//                 _loginController.text = value!;
//                 if (value.isEmpty) {
//                   return 'Campo obrigatório!';
//                 }
//                 return null;
//               },
//               keyboardType: TextInputType.text,
//               decoration: const InputDecoration(
//                   labelText: 'Número de telefone, email ou CPF', enabled: true),
//             ),
//           ),
//           Container(
//             child: TextFormField(
//               obscureText: true,
//               keyboardType: TextInputType.visiblePassword,
//               decoration: InputDecoration(
//                 labelText: 'Senha',
//                 suffix: IconButton(
//                     onPressed: () {
//                       print(_loginController);
//                     },
//                     icon: Icon(Icons.remove_red_eye)),
//               ),
//             ),
//           ),
//         ],
//       ));
// }

// class TextFieldContainer extends StatelessWidget {
//   final ValueChanged<String> onChanged;
//   final _formkey = GlobalKey<FormState>();
//   final TextEditingController _loginController = TextEditingController();

//   TextFieldContainer({
//     Key? key,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//       width: size.width * 8,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: TextFieldContainer(
//         onChanged: (String value) {},
//         child: TextField(
//           onChanged: onChanged,
//           controller: _loginController,
//           keyboardType: TextInputType.text,
//           decoration: const InputDecoration(
//               hintText: 'Número de telefone, email ou CPF', enabled: true),
//         ),
//       ),
//     );
//   }
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           Image.asset(
//                     'assets/logo_lovepeople.png',
//                     height: 290,
//                     width: 290,
//                   ),
                  
//         ],

//     ),)
//   );
// }

// return Form(
// key: _formKey,
// child: Column(),
// );

// validator: (valor) {
//            _loginController.text = valor!;
 //           if (valor.isEmpty) {
 //             return 'Campo obrigatório!';
 //           }
 //           return null;
 //         },
        // actions: [
        //   Image.network(
        //       'https://cdn-fhadf.nitrocdn.com/ZposurrhgpMNIxJkJSDhfrsVaOicbFuO/assets/static/optimized/rev-3e05cca/wp-content/uploads/2021/02/cropped-favicon-lovepeople.png'),
        // ],
        //TextField(
        //keyboardType: TextInputType.text,     //ou .email
        //decoration: InputDecoration(
        //labelText: 'Digite seu e-mail',
        //enabled: true),),))
                //TextField(
        //keyboardType: TextInputType.text,     //ou .number
        //decoration: InputDecoration(
        //labelText: 'Digite sua senha',
        //enabled: true),),))