import 'package:flutter/material.dart';

class InstaPage1 extends StatefulWidget {
  const InstaPage1({Key? key}) : super(key: key);

  @override
  State<InstaPage1> createState() => _InstaPage1State();
}

class _InstaPage1State extends State<InstaPage1> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        Container(
          height: 100,
          child :Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                              Border.all(color: Color.fromRGBO(250, 12, 92, 100),width: 3)),
                          child: Icon(Icons.add_circle_outline_sharp),
                        ),
                        Text("name"),
                      ],
                    ),

                  );
                }
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blueGrey),
                      ),
                      title: Text("allignd weds"),
                      trailing: Icon(Icons.more_vert),
                    ),
                    Container(
                      height: 200,
                      color: Colors.redAccent,
                    ),
                    Container(
                      height: 30,
                      color: Colors.white,
                      child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(Icons.heart_broken),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(Icons.messenger_outline),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(Icons.send_sharp),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150,bottom: 15,top: 15),
                              child: Icon(Icons.save_alt_rounded),
                            ),
                          ]),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("161 Likes",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Text("kerala_home_dremers",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),

                      ],
                    ),Row(
                      children: [
                        Text("1300sq.Ft...more",style: TextStyle(color: Colors.black,fontSize: 15),),

                      ],
                    )
                  ],
                );
              }
          ),
        )

      ],
    );
  }
}
