import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Widget')),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(),
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/person (1).jpg"),
              ),
              title: Text("Ammar"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Some message"), Text("10 Am")],
              ),
              trailing: Icon(Icons.check, color: Colors.blue),
            ),
          );
        },
      ),
    );
  }
}

class ListViewSepratedCom extends StatelessWidget {
  const ListViewSepratedCom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(height: 24);
      },
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        //0
        return CircleAvatar(radius: 100, backgroundColor: colors[index]);
      },
    );
  }
}

class ListViewCom extends StatelessWidget {
  const ListViewCom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CircleAvatar(radius: 100, backgroundColor: Colors.red),
        CircleAvatar(radius: 100, backgroundColor: Colors.blue),
        CircleAvatar(radius: 100, backgroundColor: Colors.amber),
        CircleAvatar(radius: 100, backgroundColor: Colors.brown),
        CircleAvatar(radius: 100, backgroundColor: Colors.red),
        CircleAvatar(radius: 100, backgroundColor: Colors.blue),
        CircleAvatar(radius: 100, backgroundColor: Colors.amber),
        CircleAvatar(radius: 100, backgroundColor: Colors.brown),
      ],
    );
  }
}

List<Color> colors = [
  Colors.red,
  Colors.blue,
  Colors.amber,
  Colors.brown,
  Colors.red,
  Colors.blue,
  Colors.amber,
  Colors.brown,
];
