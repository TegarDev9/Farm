import 'package:farmer_aquaculture/presentation/widget/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BuyAndSellScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          elevation: 0,
          title: Row(
            children: [
              Icon(Icons.home, color: Colors.white),
              SizedBox(width: 8),
              Text("Market"),
            ],
          ),
          actions: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.white),
                  onPressed: () {},
                ),
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(130),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.filter_list),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TabBar(
                  tabs: [
                    Tab(text: "BUYERS"),
                    Tab(text: "SELLERS"),
                    Tab(text: "MY LISTING"),
                  ],
                  indicatorColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            MarketTab(),
            MarketTab(),
            MarketTab(),
          ],
        ),
        bottomNavigationBar: AppBottomNavigationBar(currentIndex: 1),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton.extended(
              onPressed: () {},
              backgroundColor: Colors.green[700],
              label: Text("BUY"),
              icon: Icon(Icons.shopping_cart),
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.black,
              child: Icon(Icons.close),
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              backgroundColor: Colors.green[700],
              label: Text("SELL"),
              icon: Icon(Icons.store),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        MarketCard(
          title: "Lobsters",
          quantity: "100 kg",
          rate: "\Rp.200.000 / Kg",
          imageUrl: 'assets/images/lobster.png', // Replace with actual image path
          sellerName: "Tegar",
          location: "Indonesia",
        ),
        SizedBox(height: 10),
        MarketCard(
         title: "Lobsters",
          quantity: "500 kg",
          rate: "\Rp.200.000 / Kg",
          imageUrl: 'assets/images/lobster.png', // Replace with actual image path
          sellerName: "ilham",
          location: "Indonesia",
        ),

         MarketCard(
         title: "Lobsters",
          quantity: "500 kg",
          rate: "\Rp.200.000 / Kg",
          imageUrl: 'assets/images/lobster.png', // Replace with actual image path
          sellerName: "ilham",
          location: "Indonesia",
        ),

         MarketCard(
         title: "Lobsters",
          quantity: "500 kg",
          rate: "\Rp.200.000 / Kg",
          imageUrl: 'assets/images/lobster.png', // Replace with actual image path
          sellerName: "ilham",
          location: "Indonesia",
        ),
      ],
    );
  }
}

class MarketCard extends StatelessWidget {
  final String title;
  final String quantity;
  final String rate;
  final String imageUrl;
  final String sellerName;
  final String location;

  const MarketCard({
    required this.title,
    required this.quantity,
    required this.rate,
    required this.imageUrl,
    required this.sellerName,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text("Quantity: $quantity", style: TextStyle(color: Colors.grey)),
                  Text("Rate: $rate", style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 12,
                        child: Icon(Icons.person, size: 16, color: Colors.grey[700]),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "$sellerName\n$location",
                        style: TextStyle(color: Colors.grey[700], fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.edit, color: Colors.green),
              onPressed: () {
                // Handle edit action
              },
            ),
          ],
        ),
      ),
    );
  }
}
