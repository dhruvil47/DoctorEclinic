import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsappWeb extends StatefulWidget {
  const WhatsappWeb({this.isMedium = false});

  final bool isMedium;

  @override
  _WhatsappWebState createState() => _WhatsappWebState();
}

class _WhatsappWebState extends State<WhatsappWeb> {
  final imgUrl =
      "https://media-exp1.licdn.com/dms/image/C5103AQGn6DPi7-ZKTw/profile-displayphoto-shrink_800_800/0/1575286738593?e=1628726400&v=beta&t=noAboQwd3D0jrGekDagyV3j29EBb26ia_UeGdnaZrbo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.teal,
        title: Text("Doctor e-clinics"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.doc_checkmark_fill),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Find a Doctor")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.time),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Appointments")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.chat_bubble),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Chat with Doctor")
                  ],
                )
              ],
            ),
          )
        ],
      ),
      body: Row(
        children: [
          // Left widget
          _buildChatList(),

          // Right Widget
          _buildExpandedChat(),
        ],
      ),
    );
  }

  Expanded _buildChatList() {
    return Expanded(
      flex: widget.isMedium ? 1 : 3,
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        //color: const Color(0xFF070D11),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white12,
          ),
        ),
        child: Container(
          child: Column(
            children: [
              // Chats list
              Expanded(
                child: ListView.builder(
                  itemCount: 25,
                  //shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(imgUrl),
                      ),
                      title: Text(
                        'First name',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text('Hi, hello. message',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      trailing: Column(
                        //mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '09:23 AM',
                            style: const TextStyle(color: Colors.black26),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.greenAccent),
                            child: Text(
                              "1",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                          //Icon(Icons.circle,color: Colors.greenAccent,)
                        ],
                      ),
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildExpandedChat() {
    return Expanded(
      flex: widget.isMedium ? 2 : 8,
      child: Column(
        children: [
          // Appbar
          _chatAppbar(),

          // Body
          Expanded(
            child: Container(
              color: Colors.white,
              //color: const Color(0xFFFFFF),
              alignment: Alignment.center,
              child: Text('Body', style: TextStyle(color: Colors.black)),
            ),
          ),

          // Bottom chat widget
          _chatBottombar(),
        ],
      ),
    );
  }

  Widget _chatAppbar() {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      //color: const Color(0xFFFFFF),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imgUrl),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('User name',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black)),
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _chatBottombar() {
    return Card(
      //color: const Color(0xFF1E2428),
      color: Colors.white,
      margin: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.people,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.attach_file,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[200],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type a message',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 6),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.mic,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
