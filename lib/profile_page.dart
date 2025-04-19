import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String email;

  const ProfilePage({super.key, required this.email});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isBlue = false;

  void toggleBackground() {
    setState(() {
      isBlue = !isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isBlue ? Colors.pinkAccent : Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Profile: ${widget.email}"),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.home, size: 40, color: Colors.white),
            Icon(Icons.search, size: 40, color: Colors.white),
            Icon(Icons.person, size: 40, color: Colors.white),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("My Profile", style: TextStyle(fontSize: 35)),
            const SizedBox(height: 18),
            Stack(
              clipBehavior: Clip.none,
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/91441782?v=4'),
                ),
                Positioned(
                  bottom: 70,
                  right: 5,
                  child: Icon(Icons.edit, size: 30, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Text("Email: ${widget.email}"),
            const Text("Nama: mamad"),
            const Text("Alamat: Sukoharjo"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleBackground,
              child: const Text("Ganti Background"),
            ),
          ],
        ),
      ),
    );
  }
}
