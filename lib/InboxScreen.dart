import 'package:demo_inbox/CardWidget.dart';
import 'package:flutter/material.dart';

import 'Model.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key, required this.title});

  final String title;

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

final inbox_icon = Icon(
  Icons.mail_outlined,
  size: 18,
  color: Colors.black,
);

List<Model> values = [
  Model(icon: inbox_icon, name: 'Inbox', value: "30", isExpandable: false),
  Model(
      icon: inbox_icon, name: 'In - process', value: "30", isExpandable: false),
  Model(icon: inbox_icon, name: 'Completed', value: "30", isExpandable: false),
  Model(icon: inbox_icon, name: 'Rejected', value: "30", isExpandable: false),
  Model(icon: inbox_icon, name: 'Others', value: "30", isExpandable: true),
  Model(icon: inbox_icon, name: 'Drafts', value: "30", isExpandable: false),
  Model(icon: inbox_icon, name: 'Favourites', value: "30", isExpandable: false),
  Model(icon: inbox_icon, name: 'Archive   ', value: "30", isExpandable: false),
];

List<Model> values2 = [
  Model(icon: inbox_icon, name: 'Drafts', value: "30", isExpandable: false),
  Model(icon: inbox_icon, name: 'Favourites', value: "30", isExpandable: false),
  Model(icon: inbox_icon, name: 'Archive   ', value: "30", isExpandable: false),
];

class _InboxScreenState extends State<InboxScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xff104035),
          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff104035),
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff50C800),
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock),
              label: 'Vault',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_document),
              label: 'E-Sign',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_4_rounded),
              label: 'My Account',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_rounded),
              label: 'More',
              backgroundColor: Colors.white,
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          margin: EdgeInsets.only(left: 16, top: 8, right: 16),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: 500,
                  child: ListView.builder(
                      itemCount: values.length,
                      itemBuilder: (context, index) {
                        if(index == 4){
                          return Column(
                            children: [
                              CardWidget(model: values[index]),
                              Divider(thickness: 1,height: 32,)
                            ],
                          );
                        }
                        return Column(
                          children: [
                            CardWidget(model: values[index]),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        );

                      }),
                ),
              ),
              // const Divider(
              //   thickness: 1,
              //   height: 32,
              //   color: Colors.black,
              // ),
              // Expanded(
              //   child: ListView.builder(
              //       itemCount: values2.length,
              //       itemBuilder: (context, i) {
              //         return CardWidget(model: values2[i]);
              //       }),
              // ),
            ],
          ),
        ));
  }
}
