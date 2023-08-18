import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('actions');
              },
              icon:const Icon(
                Icons.info_outline,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            //  const Image(image: NetworkImage("https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_640.jpg"),),
            //   const Divider(color:Colors.amber),
              Image.asset('images/tree.jpg'),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                color: Colors.blueGrey,
                width: double.infinity,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const Center(
                  child: Text(
                    'This is a text',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.red,
                ),
                onPressed: () {
                  debugPrint('elev butt');
                },
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('out butt');
                },
                child: const Text('Outlined Button'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('text butt');
                },
                child: const Text('Text Button'),
              ),
              // ignore: prefer_const_constructors
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('this is row');
                },
                // ignore: prefer_const_constructors
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blueGrey,
                    ),
                    Text('Row Widget'),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
              Switch(
                  value: isSwitch,
                  onChanged: (bool newBool) {
                    setState(
                      () {
                        isSwitch = newBool;
                      },
                    );
                  }),
              Checkbox(
                  value: isCheckbox,
                  onChanged: (bool? newBool) {
                    setState(
                      () {
                        isCheckbox = newBool;
                      },
                    );
                  }),
                  
              Image.network(
                  "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_640.jpg")
            ],
          ),
        ));
  }
}
