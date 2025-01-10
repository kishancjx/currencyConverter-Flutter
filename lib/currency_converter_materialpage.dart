import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatefulWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  State<CurrencyConverterMaterialpage> createState() =>
      _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverterMaterialpage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();


  void convert(){
    result = double.parse(textEditingController.text) * 80;
    setState(() {    });
  }
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TestingApp",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 2, 69, 255),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 81, 255),
                fontSize: 72,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                    hintText: "Please Enter the Amount in USD!",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 9, 1, 51),
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(Icons.monetization_on_rounded),
                    prefixIconColor: const Color.fromARGB(255, 0, 77, 17),
                    fillColor: Colors.amber,
                    border: border,
                    focusedBorder: border),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (convert),
                style: TextButton.styleFrom(
                  elevation: 30,
                  backgroundColor: Color.fromARGB(255, 2, 69, 255),
                  foregroundColor: Color.fromARGB(255, 247, 247, 247),
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: const Text("Convert"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialpageLess extends StatelessWidget {
//   const CurrencyConverterMaterialpageLess({super.key});
//   @override
//   Widget build(BuildContext context) {

//     final TextEditingController textEditingController = TextEditingController();
//     double result = 0;
//     final border = OutlineInputBorder(
//         borderSide: BorderSide(
//           width: 2.0,
//           style: BorderStyle.solid,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(20)));

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "TestingApp",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 2, 69, 255),
//         foregroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: TextStyle(
//                 color: const Color.fromARGB(255, 0, 81, 255),
//                 fontSize: 72,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: textEditingController,
//                 decoration: InputDecoration(
//                     hintText: "Please Enter the Amount in USD!",
//                     hintStyle: TextStyle(
//                         color: const Color.fromARGB(255, 9, 1, 51),
//                         fontWeight: FontWeight.w500),
//                     prefixIcon: Icon(Icons.monetization_on_rounded),
//                     prefixIconColor: const Color.fromARGB(255, 0, 77, 17),
//                     fillColor: Colors.amber,
//                     border: border,
//                     focusedBorder: border),
//                 keyboardType: TextInputType.numberWithOptions(decimal: true),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (kDebugMode) {
//                     print("Button Clicked!");
//                     result=double.parse(textEditingController.text)*85;
//                     print(result);

//                   }

//                 },
//                 style: TextButton.styleFrom(
//                   elevation: 30,
//                   backgroundColor: Color.fromARGB(255, 2, 69, 255),
//                   foregroundColor: Color.fromARGB(255, 247, 247, 247),
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       fontStyle: FontStyle.italic),
//                   minimumSize: Size(double.infinity, 60),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                 ),
//                 child: const Text("Convert"),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
