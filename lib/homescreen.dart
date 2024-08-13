import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Welcome back, Blitz',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {}, // Add action for overflow menu
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your financial situation is looking good!',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            // Progress bar
            Row(
              children: [
                Text('Beginner Level'),
                Spacer(),
                Text('XP 380/500'),
              ],
            ),
            SizedBox(height: 10),
            LinearProgressIndicator(
              value: 380 / 500,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            ),
            SizedBox(height: 20),
            // Tabs
            DefaultTabController(
              length: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blueAccent,
                    tabs: [
                      Tab(text: 'Today'),
                      Tab(text: 'Monthly'),
                      Tab(text: 'Yearly'),
                      Tab(text: 'Future'),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Cards
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.55, // Scrollable area
                    child: ListView(
                      children: [
                        CardWidget(
                          title: 'Small stuff adds up!',
                          description:
                              'Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?',
                          date: '09-06-2018',
                          backgroundColor: Colors.blueAccent,
                        ),
                        CardWidget(
                          title: 'You’re doing well paying off your loans',
                          description:
                              'Since this time last year, you’ve contributed \$5,678 toward your Sallie Mae Student Loan. Great work!',
                          date: '09-06-2018',
                          backgroundColor: Colors.tealAccent.shade700,
                        ),
                        CardWidget(
                          title: 'Small stuff adds up!',
                          description:
                              'Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?',
                          date: '09-06-2018',
                          backgroundColor: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final Color backgroundColor;

  const CardWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.date,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Adjust text color based on background
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                color: Colors.white, // Adjust text color based on background
              ),
            ),
            SizedBox(height: 8),
            Text(
              date,
              style: TextStyle(
                color: Colors.white, // Adjust text color based on background
              ),
            ),
          ],
        ),
      ),
    );
  }
}
