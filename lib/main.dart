import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
        ),
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text('PERSONAL PROFILE'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Personal Info'),
                Tab(icon: Icon(Icons.school), text: 'Education'),
                Tab(icon: Icon(Icons.code), text: 'Skills'),
                Tab(icon: Icon(Icons.interests), text: 'Interests'),
                Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PersonalInfoScreen(),
              EducationScreen(),
              SkillsScreen(),
              InterestsScreen(),
              ContactScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[50]!, Colors.teal[300]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/assets/joann.jpg'), // Update the asset path
            ),
            SizedBox(height: 16),
            Text(
              'JOANN VELASQUEZ BALMES',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal[900],
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Age: 22',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal[700],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                'Currently studying at Batangas State University, '
                'taking Bachelor of Science in Information Technology '
                'Major in Business Analytics.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.teal.shade900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[50]!, Colors.blue[100]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Bachelor of Science in Information Technology Major in Business Analytics'),
            subtitle: Text('Batangas State University, 2021-2025'),
            tileColor: Colors.white.withOpacity(0.8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          Divider(),
          ListTile(
            title: Text('Information and Communication Technology Major in CSS'),
            subtitle: Text('Gulod Senior High School, 2019-2021'),
            tileColor: Colors.white.withOpacity(0.8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          Divider(),
          ListTile(
            title: Text('Sto. Nino National High School'),
            subtitle: Text('2014-2019'),
            tileColor: Colors.white.withOpacity(0.8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          Divider(),
          ListTile(
            title: Text('Haligue Silangan Elementary School'),
            subtitle: Text('2009-2014'),
            tileColor: Colors.white.withOpacity(0.8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          Divider(),
          ListTile(
            title: Text('Haligue Silangan Day Care Center'),
            subtitle: Text('2007-2009'),
            tileColor: Colors.white.withOpacity(0.8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange[50]!, Colors.orange[100]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Skills', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• Communication\n• Team Work\n• Problem-Solving'),
          SizedBox(height: 16),
          Text('IT Skills', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• Database Management\n• Data Analysis and Visualization\n• IT Support and Trouble Shooting'),
          SizedBox(height: 16),
          Text('Certifications', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• National Certificate II Computer System Servicing\n• Count Her In\n• TechTalks III'),
        ],
      ),
    );
  }
}

class InterestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple[50]!, Colors.purple[100]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Interests', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Data analysis and visualization are fascinating and valuable skills. '
              'They involve collecting, processing, and presenting data to reveal insights and assist in decision-making.'),
          SizedBox(height: 16),
          Text('Data Analysis', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• To collect data\n• To analyze data\n• Identifying trends, patterns, and correlations.'),
          SizedBox(height: 16),
          Text('Visualization', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• To create dashboards\n• To generate reports'),
        ],
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightGreen[50]!, Colors.lightGreen[100]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Information', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.email, size: 20),
            title: Text('Email: 21-00791@g.batstate-u.edu.ph'),
          ),
          ListTile(
            leading: Icon(Icons.call, size: 20),
            title: Text('Phone: +639972809051'),
          ),
          ListTile(
            leading: Icon(Icons.facebook, size: 20),
            title: Text('Facebook: joann.balmes'),
          ),
        ],
      ),
    );
  }
}