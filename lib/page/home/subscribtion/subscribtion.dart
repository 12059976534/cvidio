import "package:flutter/material.dart";

class Subscribtion extends StatefulWidget {
  const Subscribtion({Key? key}) : super(key: key);

  @override
  _SubscribtionState createState() => _SubscribtionState();
}

class _SubscribtionState extends State<Subscribtion> {
  final List<String> name = <String>[
    'Risa juliana',
    'Niang malaka',
    'Tika b',
    'Astutik saja',
    'Wahyu Anugrah',
    'Samsul Hanan',
    'Nahruk hayatuah',
    'erwin rahyu',
    'hari sunaryo',
    'wahyu aja deh',
    'erwin rahyu',
    'hari sunaryo',
    'wahyu aja deh',
    'hari sunaryo',
    'wahyu aja deh'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://i.insider.com/602e8ce342b84000192f42fd?width=700')),
                  title: Text(name[index]),
                ),
              );
            }));
  }
}
