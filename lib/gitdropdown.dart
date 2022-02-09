// // // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // // void main() => runApp(DropDownExample());

// // class DropDownExample extends StatefulWidget {
// //   DropDownExample() : super();

// //   final String title = "DropDown Demo";

// //   @override
// //   DropDownExampleState createState() => DropDownExampleState();
// // }

// // class Country {
// //   int id;
// //   String name;

// //   Country(this.id, this.name);

// //   static List<Country> getCountries() {
// //     return <Country>[
// //       Country(1, 'India'),
// //       Country(2, 'Malaysia'),
// //       Country(3, 'UAE'),
// //       Country(4, 'Indonesia'),
// //       Country(5, 'Nepal'),
// //     ];
// //   }
// // }

// // class DropDownExampleState extends State<DropDownExample> {
// //   //
// //   List<Country> _countries = Country.getCountries();
// //   List<DropdownMenuItem<Country>>? _dropdownMenuItems=null;
// //   Country ?_selectedCountry=null;

// //   @override
// //   void initState() {
// //     _dropdownMenuItems = buildDropdownMenuItems(_countries);
// //     _selectedCountry = _dropdownMenuItems![0].value;
// //     super.initState();
// //   }

// //   List<DropdownMenuItem<Country>> buildDropdownMenuItems(List countries) {
// //     List<DropdownMenuItem<Country>> items = [];
// //     for (Country company in countries) {
// //       items.add(
// //         DropdownMenuItem(
// //           value: company,
// //           child: Text(
// //             company.name,
// //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
// //           ),
// //         ),
// //       );
// //     }
// //     return items;
// //   }

// //   void onChangeDropdownItem( selectedCompany) {
// //     setState(() {
// //       _selectedCountry = selectedCompany;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return new MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: new Scaffold(
// //         appBar: new AppBar(
// //           title: new Text("DropDown Example"),
// //         ),
// //         body: new Container(
// //           child: Center(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               mainAxisAlignment: MainAxisAlignment.start,
// //               children: <Widget>[
// //                 Align(
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(8.0),
// //                     child: Text(
// //                       "Select a Country",
// //                       style:
// //                           TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
// //                     ),
// //                   ),
// //                   alignment: Alignment.topLeft,
// //                 ),
// //                 SizedBox(
// //                   height: 20.0,
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: DropdownButton(
// //                     value: _selectedCountry,
// //                     items: _dropdownMenuItems,
// //                     isExpanded: true,
// //                     underline: SizedBox(),
// //                     onChanged: (selectedCompany) => onChangeDropdownItem(selectedCompany),
// // /*                    hint: Text(
// //                       "Select a Country",
// //                       style:
// //                           TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
// //                     ),*/ // you can set hint like that.
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   height: 20.0,
// //                 ),
// //                 Text(
// //                   'Selected: ${_selectedCountry?.name}',
// //                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// // import 'package:tl_fantasy/widgets/Player_Widget.dart';
// // import 'player_arguments.dart';

// class PlayerDetails extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     final PlayerArguments args = ModalRoute.of(context)?.settings.arguments;
//     List<Stats> stats = [
//       Stats("Matches", args.matches ),
//       Stats("Goals", args.goals ),
//       Stats("Assists", args.assists ),
//       Stats("Saves", args.saves ),
//     ];

//     List<Team> teams = [
//       Team("Barcelona B", "https://i.pinimg.com/originals/ef/9c/3f/ef9c3fccec423f70376fcafa05c5d447.jpg","1998" ),
//       Team("Barcelona", "https://i.pinimg.com/originals/ef/9c/3f/ef9c3fccec423f70376fcafa05c5d447.jpg","2005" ),
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Player Details"),
//         backgroundColor: Colors.blue[300],
//         elevation: 0.0,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: [Colors.purple, Colors.blue])
//         ),
//         child: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [Colors.purple, Colors.black38])),
//           child: ListView(
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 width: double.infinity,
//                 child:    Card(
//                   elevation: 4.0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child:
//                     Row(
//                       children: <Widget>[
//                         CircleAvatar(
//                           backgroundImage: NetworkImage(args.image),
//                         ),
//                         const SizedBox(width:10.0),
//                         Spacer(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: <Widget> [
//                             Text(args.name, style: TextStyle( fontWeight:FontWeight.bold,
//                               fontSize: 18.0,
//                             )),
//                             const SizedBox(height: 5.0, ),
//                             Text(args.club, style: TextStyle( fontWeight:FontWeight.bold,
//                               fontSize: 18.0,
//                             )),
//                             const SizedBox(height: 5.0, ),
//                             Text("Role : "+args.role, style: TextStyle( fontWeight:FontWeight.bold,
//                               fontSize: 18.0, color: Colors.grey[600],
//                             )),
//                             const SizedBox(height: 5.0, ),
//                             Text("Position : "+args.club, style: TextStyle( fontWeight:FontWeight.bold,
//                               fontSize: 18.0, color: Colors.grey[600],
//                             )),
//                             const SizedBox(height: 5.0, ),
//                             Text("Nationality : "+args.nationality, style: TextStyle( fontWeight:FontWeight.bold,
//                               fontSize: 18.0, color: Colors.grey[600],
//                             )),

//                           ],
//                         ),

//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                   padding: EdgeInsets.all(12.0),
//                   child: GridView.builder(
//                     shrinkWrap: true,
//                     itemCount: stats.length,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 4.0,
//                         mainAxisSpacing: 4.0
//                     ),
//                     itemBuilder: (BuildContext context, int index){
//                       return Card(
//                         child: Center(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 Container(
//                                   alignment: Alignment.topCenter,
//                                   padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                   child:  Text(stats[index].result,style: TextStyle(fontSize: 20.0)),
//                                 ),
//                                 Container(
//                                   alignment: Alignment.bottomCenter,
//                                   child: Text(stats[index].title,style: TextStyle(fontSize: 25.0)),),

//                               ]
//                           ),
//                         ),
//                       );
//                     },
//                   )
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//              Container(child:
//              ListView.builder(
//                itemBuilder: (context, index){
//                  return Card(
//                    elevation: 4.0,
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(10.0),
//                    ),
//                    child: Padding(
//                      padding: const EdgeInsets.all(16.0),
//                      child:
//                      Row(
//                        children: <Widget>[
//                          CircleAvatar(
//                            backgroundImage: NetworkImage(teams[index].image),
//                          ),
//                          const SizedBox(width:10.0),
//                          Spacer(),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.end,
//                            children: <Widget> [
//                              Text(teams[index].name, style: TextStyle( fontWeight:FontWeight.bold,
//                                fontSize: 18.0,
//                              )),
//                              const SizedBox(height: 5.0, ),
//                              Text("joined : "+teams[index].date, style: TextStyle( fontWeight:FontWeight.bold,
//                                fontSize: 18.0, color: Colors.grey[600],
//                              )),
//                            ],
// ),

//                        ],
// ),
// ),
//                  );
// },
// itemCount: teams.length,
//  ),),
//             ],
//           ),
//         ),

//       ),
//     );
//   }
// }


// class Stats{

//   String title;
//   String result;

//   Stats(this.title,this.result);

// }

// class Team {

//   String name;
//   String image;
//   String date;

//   Team(this.name,this.image,this.date);

// }