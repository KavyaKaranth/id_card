import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: IDCardApp(), debugShowCheckedModeBanner: false),
  );
}

class IDCardApp extends StatelessWidget {
  const IDCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              // Top bar
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "STUDENT ID CARD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Profile picture
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/photo.jpg'),
              ),

              const SizedBox(height: 15),

              // Name
              const Text(
                "K Kavyashree Karanth",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              // Role / Position
              const Text(
                "MCA Student",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 15),

              // ID number and details
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: const [
                    InfoRow(label: "ID No", value: "NNM24MC060"),
                    InfoRow(label: "Email", value: "kavya@gmail.com"),
                    InfoRow(label: "Phone", value: "+91 1234567891"),
                    InfoRow(label: "College", value: "NMAMIT, Nitte"),
                  ],
                ),
              ),

              const Spacer(),

              // Bottom bar
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
            
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text("$label: ", style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
