// import 'package:flutter/material.dart';
//
// import 'package:google_generative_ai/google_generative_ai.dart';
// class AI extends StatefulWidget {
//
//
//   @override
//   State<AI> createState() => _AIState();
// }
//
// class _AIState extends State<AI> {
//   TextEditingController userinput = TextEditingController();
//   final scrollController = ScrollController();
//   static const apiKey = "AIzaSyAqfJ0sJmHAOMm17djiE0GCjofaZiWyeDk ";
//   final model  = GenerativeModel(model: 'gemini-1.5-flash-latest', apiKey: apiKey);
//
//   final List<Messages> message = [];
//   Future<void> sendMessage() async{
//     final message = userinput.text;
//     setState(() {
//       message.add(
//           Messages(isUser: true, message: message,  date: DateTime.now()));
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         scrollController.animateTo(
//           scrollController.position.maxScrollExtent,
//           duration: const Duration(milliseconds: 300),
//           // Adjust animation duration as needed
//           curve: Curves.easeIn, // Customize animation curve for a smoother experience
//         );
//       });
//       userinput.text = "";
//
//     });
// final content = [Content.text(message)];
// final response = await model.generateContent(content);
//
// setState(() {
//       message.add(Messages(isUser: false, message: response.text?? "", date: DateTime.now()));
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         scrollController.animateTo(
//             scrollController.position.maxScrollExtent,
//             duration: const Duration(milliseconds: 300), // Adjust animation duration as needed
//         curve: Curves.easeIn,
//         );
//         });
//       userinput.text="";
// });
// }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       backgroundColor: Colors.teal,
//         title: Text(" AI"),shadowColor: Colors.tealAccent,
//
//
//       ),
//       body: Container(
//         color: Colors.black87,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(child: ListView.builder(itemCount: message.length, controller: scrollController, itemBuilder: (context , index){
//               final Message = message[index];
//               return Messages(isUser : Message.isUser , message: Message.Message , date : DateFormat('HH:mm').format(message.date));
//
//
//
//
//
//             })
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 15,
//                     child: TextFormField(
//                       style: TextStyle(color: Colors.white),
//                       controller: userinput,
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           label: Text('Enter Your Message')
//                       ),
//                       validator: (value)  {
//                         sendMessage();
//                       },
//                       onFieldSubmitted: (value){
//                         sendMessage();
//                       },
//                     ),
//                   ),
//                   Spacer(),
//                   IconButton(
//                       padding: EdgeInsets.all(12),
//                       iconSize: 30,
//                       style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all(Colors.black),
//                           foregroundColor: MaterialStateProperty.all(Colors.white),
//                           shape: MaterialStateProperty.all(CircleBorder())
//                       ),
//                       onPressed: (){
//                         sendMessage();
//                       },
//                       icon: Icon(Icons.send))
//                 ],
//               ),
//             ),
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Messages extends StatelessWidget {
//
//   final bool isUser;
//   final String message;
//   final String date;
//
//   const Messages(
//       {
//         super.key,
//         required this.isUser,
//         required this.message,
//         required this.date
//       });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.all(15),
//       margin: EdgeInsets.symmetric(vertical: 15).copyWith(
//           left: isUser ? 100:10,
//           right: isUser ? 10: 100
//       ),
//       decoration: BoxDecoration(
//           color: isUser ? Colors.blueAccent : Colors.black,
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(10),
//               bottomLeft: isUser ? Radius.circular(10): Radius.zero,
//               topRight: Radius.circular(10),
//               bottomRight: isUser ? Radius.zero : Radius.circular(10)
//           )
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             message,
//             style: TextStyle(fontSize: 16,color: isUser ? Colors.white: Colors.white),
//           ),
//           Text(
//             date,
//             style: TextStyle(fontSize: 10,color: isUser ? Colors.white: Colors.white,),
//           )
//         ],
//       ),
//     );
//   }
// }