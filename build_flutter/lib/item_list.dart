import 'package:flutter/material.dart';

class Item {
  final IconData icon;
  final Color iconcolor;
  final String title;
  final String subtitle;


Item({
  required this.icon,
  required this.iconcolor,
  required this.title,
  required this.subtitle,
});
}

class ItemList extends StatelessWidget {
  final List<Item> items;

  ItemList({required this.items});

@override
 Widget build(BuildContext context) {
  return ListView.builder(
    padding: EdgeInsets.all(10),
    itemCount: items.length,
    itemBuilder: (context, index) {
      return buildListItem(items[index]);
    },
    );
 }

Widget buildListItem(Item item) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: item.iconcolor,
        child: Icon(item.icon, color: Colors.white, size: 24,),
      ),
      title: Text(item.title),
      subtitle: Text(item.subtitle, style: TextStyle(color: Colors.grey),),
      trailing: Icon(Icons.arrow_forward_ios),
    ),

  );
}

}