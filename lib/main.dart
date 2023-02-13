import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool switchVal = false;
  bool switchVal1 = false;
  bool switchVal2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Setting UI",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "Common",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )),
              const Card(
                elevation: 1,
                child: ListTile(
                  title: Text(
                    "Language",
                    style: TextStyle(fontSize: 16),
                  ),
                  leading: Icon(Icons.language_rounded),
                  subtitle: Text(
                    "English",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const Card(
                elevation: 1,
                child: ListTile(
                  title: Text(
                    "Environment",
                    style: TextStyle(fontSize: 16),
                  ),
                  leading: Icon(Icons.cloud_outlined),
                  subtitle: Text(
                    "Production",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              const Align(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )),
              const Card(
                elevation: 1,
                child: ListTile(
                  title: Text(
                    "Phone Number",
                    style: TextStyle(fontSize: 16),
                  ),
                  leading: Icon(Icons.phone),
                ),
              ),
              const Card(
                elevation: 1,
                child: ListTile(
                  title: Text(
                    "Email",
                    style: TextStyle(fontSize: 16),
                  ),
                  leading: Icon(Icons.email_outlined),
                ),
              ),
              const Card(
                elevation: 1,
                child: ListTile(
                  title: Text(
                    "Sign Out",
                    style: TextStyle(fontSize: 16),
                  ),
                  leading: Icon(Icons.logout),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              const Align(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "Security",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )),
              ListTile(
                leading: const Icon(Icons.phonelink_lock_outlined),
                title: const Text("Lock app in background"),
                trailing: Switch(
                  activeColor: Colors.red,
                  value: switchVal,
                  onChanged: (val) {
                    setState(() {
                      switchVal = val;
                    });
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.fingerprint),
                title: const Text("Use Fingerprint"),
                trailing: Switch(
                  activeColor: Colors.red,
                  value: switchVal1,
                  onChanged: (val) {
                    setState(() {
                      switchVal1 = val;
                    });
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Change Password"),
                trailing: Switch(
                  activeColor: Colors.red,
                  value: switchVal2,
                  onChanged: (val) {
                    setState(() {
                      switchVal2 = val;
                    });
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              const Align(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "Misc",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )),
              ListTile(
                  leading: const Icon(Icons.file_present_outlined),
                  title: const Text("Terms of service"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                  )),
              ListTile(
                  leading: const Icon(Icons.file_copy),
                  title: const Text("Open source license"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
