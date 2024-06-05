import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> config = [
    {
      "key": "TESTINGAUTHKEYSLOP",
      "name": "TestingAuthKeySlop",
      "category": "Testing",
      "usage": "N seconds|minutes|hours",
      "summary":
          "Time before expiration that we replace our ed25519 authentication key",
      "description": "",
      "position": 316,
      "value": "3 hours"
    },
    {
      "key": "TESTINGSIGNINGKEYSLOP2",
      "name": "TestingSigningKeySlop2",
      "category": "Testing2",
      "usage": "N seconds|minutes|hours2",
      "summary":
          "Time before expiration that we replace our ed25519 signing key2",
      "description":
          "How early before the official expiration of a an Ed25519 signing key do we replace it and issue a new key? (Default: 3 hours for link and auth; 1 day for signing.)2",
      "position": 317-2,
      "value": "1 day2"
    }
  ];
  int x=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(35.0),
      child: Center(
        child: Table(
            border: TableBorder.all(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
                width: 3.6),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            defaultColumnWidth: FlexColumnWidth(),
            children: [
              TableRow(
                  decoration: BoxDecoration(color: Colors.amber),
                  children: [
                      cell(config.first.keys.skip(0).toString()),
                     cell('key'),
                    cell('name'),
                    cell('category'),
                    cell('usage'),
                    cell('summary'),
                    cell('description'),
                    cell('position'),
                    cell('value'),
                    cell('delet'),
                  ]),
              ...List.generate(
                  2,
                  (index) => TableRow(children: [
                        cell(config[x].entries.toString()),
                        cell(config[x].entries.first.value),
                        cell(config[x].entries.skip(1).first.value),
                        cell(config[x].entries.skip(2).first.value),
                        cell(config[x].entries.skip(3).first.value),
                        cell(config[x].entries.skip(4).first.value),
                        cell(config[x].entries.skip(5).first.value),
                        cell(config[x].entries.skip(6).first.value.toString()),
                        cell(config[x].entries.skip(7).first.value),
                        printx(x++),
                        
                        // cell('cell3'),
                      ]))
            ]),
      ),
    ));
  }
}

Widget cell(String textcell) {
  return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(textcell),
      ));
}

Widget printx (int x){
print(x);
return(cell('textcell'));
}
