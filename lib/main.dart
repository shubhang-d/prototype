import 'package:flutter/material.dart';
import 'package:prototype/customWidgets/CustomCard.dart';
import 'package:prototype/screen/ToolScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wa Sender 1.0"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            ListTile(
              leading: const Icon(
                Icons.account_circle_outlined,
                size: 40,
              ),
              title: const Text(
                "Contact Sender",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const tools_screen()));
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.supervised_user_circle_outlined,
                size: 40,
              ),
              title: const Text(
                "Group Sender",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.construction_outlined,
                size: 40,
              ),
              title: const Text(
                "Tools",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ToolScreen()));
                // Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: const [
          CustomCard(
              headline: "Grab Group Members",
              str1: "1) Click Below Button, Scan QR Code",
              str2: "2) Open Any Group",
              str3: "3) Wait For the Excel"),
          CustomCard(
              headline: "Grab Whatsapp Group Links From Web Page",
              str1: "1) Click Below Button, Scan QR Code",
              str2: "2) Open any web page where Group Links are Given",
              str3: "3) Then Click on START Button"),
          CustomCard(
              headline: "Contact List Grabber",
              str1: "1) Click Below Button, Scan QR Code",
              str2: "2) Hit Grab Now Button",
              str3: "3) Wait For the Excel"),
          CustomCard(
            headline: "Contact List Grabber",
            str1: "1) Click below  Button to Scan QR Code",
            str2: "2) Hit Grab Now Button",
            str3: "3) Wait for the Excel",
          ),
          CustomCard(
            headline: "Google Map Data Extractor",
            str1: "1) Open Browser",
            str2: "2) Search your query on G Map",
            str3: "3) Hit Strart",
          ),
          CustomCard(
            headline: "Auto Group Joiner",
            str1: "1) Add/Upload Group Links",
            str2: "2) Scan WA QR Code",
            str3: "3)Then Click on Start Button",
          ),
          CustomCard(
            headline: "Whatsapp Number Filter",
            str1: "1) Add/Upload Numbers",
            str2: "2) Scan WA QR Code",
            str3: "3) Then Click on START Button",
          ),
          CustomCard(
            headline: "Grab Active Group Members",
            str1: "1) Click Below Button, Scan QR Code",
            str2: "2) Open Any Group",
            str3: "3) Wait For the Excel",
          ),
          CustomCard(
            headline: "Grab Chat List",
            str1: "1) Click Below Button",
            str2: "2) Scan QR Code",
            str3: "3) Wait for the Excel",
          ),
          CustomCard(
            headline: "Bulk Add Group Members",
            str1: "1) Click Below Button",
            str2: "2) Upload Number Excel",
            str3: "3) Select Group and Go",
          ),
          CustomCard(
            headline: "Group Finder",
            str1: "1) Click Button Below",
            str2: "2) Enter Your Subject",
            str3: "3) Start Finding",
          ),
        ],
      ),
    );
  }
}
