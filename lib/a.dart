// class LineChartWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Line Chart Example'),
//       ),
//       body: Center(
//         child: Container(
//           width: 300,
//           height: 200,
//           child: LineChart(
//             lines: [
//               Line<Point>(
//                 id: "Line",
//                 points: [
//                   Point(value: 10),
//                   Point(value: 20),
//                   Point(value: 15),
//                   Point(value: 25),
//                   Point(value: 30),
//                 ],
//                 color: Colors.blue,
//               ),
//             ],
//             chartPadding: EdgeInsets.all(16),
//             minY: 0,
//             maxY: 35,
//             minX: 0,
//             maxX: 4,
//           ),
//         ),
//       ),
//     );
//   }
// }
