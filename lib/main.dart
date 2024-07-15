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
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(  
          appBar: AppBar(
            backgroundColor: Colors.teal[50],
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
              backgroundImage: AssetImage('lib/assets/joann.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'JOANN VELASQUEZ BALMES',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Age: 22', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            Card(
              color: Colors.white.withOpacity(0.9),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Currently studying at Batangas State University, '
                  'taking Bachelor of Science in Information Technology '
                  'Major in Business Analytics.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
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
          _buildEducationTile(
            title: 'Bachelor of Science in Information Technology',
            subtitle: 'Batangas State University, 2021-2025',
          ),
          _buildEducationTile(
            title: 'Information and Communication Technology',
            subtitle: 'Gulod Senior High School, 2019-2021',
          ),
          _buildEducationTile(
            title: 'Sto. Nino National High School',
            subtitle: '2014-2019',
          ),
          _buildEducationTile(
            title: 'Haligue Silangan Elementary School',
            subtitle: '2009-2014',
          ),
          _buildEducationTile(
            title: 'Haligue Silangan Day Care Center',
            subtitle: '2007-2009',
          ),
        ],
      ),
    );
  }

  Widget _buildEducationTile({required String title, required String subtitle}) {
    return Card(
      color: Colors.white.withOpacity(0.8),
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
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
          colors: [Colors.orange[50]!, Colors.blue[100]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSkillContainer(
            title: 'Personal Skills',
            skills: '• Communication\n• Team Work\n• Problem-Solving',
          ),
          _buildSkillContainer(
            title: 'IT Skills',
            skills:
                '• Database Management\n• Data Analysis\n• IT Support',
          ),
          _buildSkillContainer(
            title: 'Certifications',
            skills:
                '• National Certificate II Computer System Servicing\n• Count Her In\n• TechTalks III',
          ),
        ],
      ),
    );
  }

  Widget _buildSkillContainer({required String title, required String skills}) {
    return Card(
      color: Colors.amber[100],
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(skills),
          ],
        ),
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
          colors: [Colors.purple[50]!, Colors.blue[100]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Interests',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            'Data analysis and visualization are fascinating and valuable skills. '
            'They involve collecting, processing, and presenting data to reveal insights.',
          ),
          SizedBox(height: 16),
          _buildInterestSection('Data Analysis', [
            '• Collect data',
            '• Analyze data',
            '• Identify trends and patterns.',
          ]),
          SizedBox(height: 16),
          _buildInterestSection('Visualization', [
            '• Create dashboards',
            '• Generate reports',
          ]),
        ],
      ),
    );
  }

  Widget _buildInterestSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        ...items.map((item) => Text(item)).toList(),
      ],
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightGreen[50]!, Colors.blue[100]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          _buildContactTile(
            icon: Icons.email,
            text: 'Email: 21-00791@g.batstate-u.edu.ph',
          ),
          _buildContactTile(
            icon: Icons.call,
            text: 'Phone: +639972809051',
          ),
          _buildContactTile(
            icon: Icons.facebook,
            text: 'Facebook: joann.balmes',
          ),
        ],
      ),
    );
  }

  Widget _buildContactTile({required IconData icon, required String text}) {
    return ListTile(
      leading: Icon(icon, size: 20),
      title: Text(text),
      tileColor: Colors.white.withOpacity(0.8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
