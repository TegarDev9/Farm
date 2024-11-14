import 'package:flutter/material.dart';
import 'package:farmer_aquaculture/presentation/widget/app_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.location_on, color: Colors.white),
            SizedBox(width: 4),
            Text("Home"),
            Spacer(),
            Text(
              "FarmerApp",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(Icons.notifications, color: Colors.white),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Buy and Book buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("Buy Product"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Book Service",
                      style: TextStyle(color: Colors.green[800]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Promotional banner
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/banner.jpg'), // Replace with your actual banner image
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Best Seed in the world",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search Product",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // Categories Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  CategoryCard(icon: Icons.grass, label: "Seeds"),
                  CategoryCard(icon: Icons.local_florist, label: "Nutrition"),
                  CategoryCard(icon: Icons.shield, label: "Protection"),
                  CategoryCard(icon: Icons.build, label: "Hardware"),
                  CategoryCard(icon: Icons.settings, label: "Technology"),
                  CategoryCard(icon: Icons.work, label: "Machinery"),
                  CategoryCard(icon: Icons.pets, label: "Livestock"),
                  CategoryCard(icon: Icons.science, label: "Agrochemical"),
                  CategoryCard(icon: Icons.medical_services, label: "Supplements"),
                  CategoryCard(icon: Icons.storage, label: "Storage"),
                  CategoryCard(icon: Icons.accessibility, label: "Accessories"),
                  CategoryCard(icon: Icons.school, label: "Education"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: 0),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      elevation: 2,
      child: InkWell(
        onTap: () {
          // Handle category tap
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.green[700], size: 30),
            SizedBox(height: 5),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
