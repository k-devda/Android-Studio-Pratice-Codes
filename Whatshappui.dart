import 'package:flutter/material.dart';

class Appui extends StatelessWidget {
   Appui({super.key});

  final List<String> names =[
    "Kashmira","Vidhi","Tisha","Mohit","Radha","Karan","Om","Sheel","Khushi"
    ,"Khushbu","Ram","Sulo","Rutvi","Shyam","Alica","Anurag","Tina","Meena","Vanshika","Dhruvi"];

  final List<String> messages = ["How are you?","Where are you?","Good Morning!","Let's meet today.","Call me.",
     "Okay 👍","See you soon.","Thank you!","I'm on the way.","Reached home.","Happy Birthday! 🎉",
     "Congratulations!","Can you help me?","No problem.","I'll call later.","What's the plan?","Good Night 🌙",
   "Take care.","See you tomorrow.","Have a nice day!"];

  final List<String> times = ["08:10 AM","08:45 AM","09:15 AM","09:40 AM","10:05 AM","10:30 AM",
     "11:00 AM","11:45 AM","12:20 PM","01:10 PM","02:00 PM","02:35 PM","03:15 PM","04:00 PM",
     "04:40 PM","05:25 PM","06:10 PM","07:00 PM","08:15 PM","09:30 PM"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatshapp",
          style:TextStyle(
            fontSize: 22, color: Colors.greenAccent, fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.camera_alt),onPressed:() {}, tooltip: "Cammera",),
            IconButton(icon: Icon(Icons.search) ,onPressed: () {} , tooltip: "Search",),
            IconButton(icon: Icon(Icons.more_vert),onPressed: () {}, tooltip: "Menu",),
          ],

          bottom: TabBar(
            tabs:
            [
                Tab(icon: Icon(Icons.chat_outlined),
                    text: "Chats"),
                Tab(icon: Icon(Icons.update),
                  text: "Updates"),
                Tab(icon: Icon(Icons.call),
                    text: "Calls"),
                Tab(
                  icon: Icon(Icons.groups),
                  text: "Communities",
                ),
              // Text("Chats"),
              // Text("Updates"),
              // Text("Calls"),
              // Icon(Icons.groups),
              // Text("Communites"),
            ],
          ),
        ),

        body: TabBarView(
            children:[
                // ListView(
                //   children: [
                //     ListTile(
                //       leading: CircleAvatar(
                //         child: Text("K", style:
                //           TextStyle(
                //             color: Colors.white,),
                //         ),
                //         radius: 28,
                //         backgroundColor: Colors.lightGreen,
                //
                //       ),
                //       title: Text("Khushi",style:
                //       TextStyle(fontWeight: FontWeight.bold,
                //       ),),
                //       subtitle: Text("How are You?",style:
                //       TextStyle(color: Colors.grey,),
                //         ) ,
                //       trailing: Text("10:30 A.M."),
                //     ),
                //     Divider(),
                //   ],
                // ),

            ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index)
            {
                return Column(
                children: [
                ListTile(
                leading: CircleAvatar(
                child: Text(names[index][0], style: TextStyle(
                color: Colors.white,),
                ),
                radius: 28,
                backgroundColor: Colors.lightGreen,
                ),

                title: Text(names[index],style: TextStyle(
                fontWeight: FontWeight.bold,
                ),),

                subtitle: Text(messages[index],style: TextStyle(
                color: Colors.grey,),
                ) ,

                trailing: Text(times[index]),
                ),
            Divider(),
                ],
                );
            },

            ),

             Center( child: Text("Updates")),
              Center( child: Text("Calls")),
              Center( child: Text("Communites")),

            ],

        ),
      ),
    );
  }
}
