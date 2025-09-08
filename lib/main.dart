import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    // --- titleSection (praktikum 2) ---
    final Widget titleSection = Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Labuan Bajo Beach',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Flores, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const SizedBox(width: 4),
          const Text('41', style: TextStyle(fontSize: 14)),
        ],
      ),
    );

    // --- buttonSection (praktikum 2) ---
    final Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // --- deskripsiSection (deskripsi bahasa Inggris) ---
    final Widget deskripsiSection = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Text(
        'Labuan Bajo Beach is a stunning coastal destination located in Flores, Indonesia, '
        'known for its crystal-clear waters and breathtaking views of the Komodo National Park. '
        'This beach serves as a gateway to explore the famous Komodo dragons, vibrant coral reefs, '
        'and picturesque islands. Visitors can enjoy snorkeling, diving, and boat trips to nearby '
        'attractions like Padar Island and Pink Beach.',
        style: TextStyle(
          color: Colors.grey[800],
          fontSize: 14,
          height: 1.5,
        ),
      ),
    );

    // --- textSection (praktikum 3) ---
    final Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Flutter layout : Rasya Aprilia (362458302115)',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Labuan Bajo Beach'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // --- gambar (praktikum 4) ---
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              'assets/bajo.jpg', // path sesuai folder images
              fit: BoxFit.cover,
              height: 200,
            ),
          ),

          // titleSection (praktikum 2)
          titleSection,

          // buttonSection (praktikum 2)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: buttonSection,
          ),

          // deskripsiSection (deskripsi bahasa Inggris)
          deskripsiSection,

          // textSection (praktikum 3)
          textSection,
        ],
      ),
    );
  }

  // Method pembantu tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
