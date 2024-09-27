import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add notification action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Find your desired health solution',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search doctor, drugs, articles...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _CategoryIcon(icon: Icons.local_hospital, label: 'Ambulance'),
                  _CategoryIcon(icon: Icons.person, label: 'Doctor'),
                  _CategoryIcon(icon: Icons.local_pharmacy, label: 'Pharmacy'),
                  _CategoryIcon(icon: Icons.local_hospital, label: 'Hospital'),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Early protection for your family health',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          ElevatedButton(
                            onPressed:
                                null, // Consider adding functionality here
                            child: Text('Learn more'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Top Doctor',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                children: <Widget>[
                  _DoctorCard(),
                  SizedBox(width: 16),
                  _DoctorCard(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class _CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _CategoryIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 24,
          child: Icon(icon, size: 24),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class _DoctorCard extends StatelessWidget {
  const _DoctorCard();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
              SizedBox(height: 8),
              Text(
                'Dr. Marcus Horizon',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Cardiologist'),
              Text('800m away'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  Text('4.7'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
