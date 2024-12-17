import 'package:flutter/material.dart';
import 'package:mood_bloom/models/destination_model.dart';
import 'package:mood_bloom/screens/detail_destination.dart';

class PetualangPage extends StatelessWidget {
  const PetualangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Filter destinasi bertipe 'bahagia'
    final List<DestinationItem> bahagiaDestinations = destinationList
        .where((destination) => destination.type == "petualang")
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Petualang"),
        backgroundColor: Colors.green.withOpacity(0.5),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: bahagiaDestinations.length,
        itemBuilder: (context, index) {
          final destination = bahagiaDestinations[index];
          return GestureDetector(
            onTap: () {
              // Navigasi ke detail page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(destination: destination),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar destinasi dengan border radius
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15), // Border radius untuk gambar
                    ),
                    child: Image.asset(
                      destination.imagePaths[0],
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Judul destinasi
                        Text(
                          destination.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Rating
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Colors.amber, size: 20),
                            const SizedBox(width: 5),
                            Text(
                              "${destination.rating}",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
