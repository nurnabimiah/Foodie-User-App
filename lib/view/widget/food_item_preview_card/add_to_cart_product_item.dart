



import 'package:flutter/material.dart';

// class CardProductItem extends StatelessWidget {
//   const CardProductItem({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(20),
//       elevation: 3,
//       child: Row(
//         children: [
//           const SizedBox(width: 8),
//           Image.asset('assets/images/chicken _dish_image.jpg', width: 90, height: 70, fit: BoxFit.cover,),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Product Name', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, letterSpacing: 0.4)),
//                           Row(
//                             children: const [
//                               Text(
//                                 'color: black',
//                                 style: TextStyle(fontSize: 13),
//                               ),
//                               const SizedBox(
//                                 width: 12,
//                               ),
//                               Text(
//                                 'size: XL',
//                                 style: TextStyle(fontSize: 13),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.delete_forever_outlined,
//                             color: Colors.red,
//                             size: 29,
//                           ))
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 6,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         '\$100',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w600),
//                       ),
//                       Spacer(),
//                       // increment decrement er button thakbe.....
//                       SizedBox(
//                         height: 30,
//                         width: 95,
//                         // child: IncDecFormFiled(
//                         //   onChange: (newValue) {},
//                         //),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }