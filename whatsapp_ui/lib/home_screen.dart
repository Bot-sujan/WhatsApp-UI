

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text('Chats')),
            Tab(child: Text('Status')),
            Tab(child: Text('Call')),
          ]),
          actions:  [
            const Icon(Icons.search),
           const  SizedBox(
              width: 10,
            ),
 
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: ((context) => [
                 const PopupMenuItem(child: Text('New Group')),
                 const PopupMenuItem(child: Text('Settings')),
                 const PopupMenuItem(child: Text('Logout'))

            ])),
            

            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body:  TabBarView(children: [
         const  Text('Camera'),

          ListView.builder(itemCount: 5 , itemBuilder: ((context, index) {
            return const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/16187929/pexels-photo-16187929.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2 ')
              ),
                title: Text('John Wick'),
                subtitle: Text('Where is my dog?'),
                trailing: Text('3:00'),
            );
          })
                
          ),
          const Text('Status'),

          ListView.builder(itemCount: 5 , itemBuilder: ((context, index) {
            return  ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/1448055/pexels-photo-1448055.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
              ),
                title: const Text('Sujan Pandey'),
                subtitle:  Text(index/2 == 0? 'you missed video call' : 'you missed audio call'),
                trailing: Icon(index / 2 == 0 ? Icons.missed_video_call_sharp : Icons.phone_callback_outlined)
            );
          }) 
                
          ),
        ]), 
      ),
    );
  }
}
