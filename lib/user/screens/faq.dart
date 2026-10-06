import 'package:flutter/material.dart';
import '../widgets/user_navbar.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  // Only one question can be open at a time.
  int expandedIndex = -1;

  final List<Map<String, String>> faqList = [
    {
      'question': 'What is StayBuddy?',
      'answer':
          'StayBuddy is a platform that helps students '
          'and working professionals find suitable PGs, '
          'hostels, and rental stays based on their '
          'preferences and location.',
    },
    {
      'question': 'How can I search for a stay?',
      'answer':
          'Go to the Search page and use filters such as '
          'area, gender, occupancy, room type, rent range '
          'and amenities.',
    },
    {
      'question': 'How do I contact the stay owner?',
      'answer':
          'Open the Stay details page to view the contact '
          'information provided by the property owner/'
          'administrator.',
    },
    {
      'question': 'Can I edit my profile?',
      'answer':
          'Yes. You can update your personal information '
          'and manage your account from the Profile page.',
    },
    {
      'question': 'Can I book a stay through StayBuddy?',
      'answer':
          'Currently, StayBuddy allows users to explore '
          'and compare accommodations. Online booking '
          'may be added in future updates.',
    },
    {
      'question': 'Who can use StayBuddy?',
      'answer':
          'StayBuddy is designed for students, working '
          'professionals, interns or individuals relocating '
          'to a new city.',
    },
    {
      'question': 'Still have questions?',
      'answer':
          'Contact us:\n'
          '📧 Email: support@staybuddy.com\n'
          '📞 Phone: +91-9876543210\n'
          '🕘 Support Hours: Monday – Saturday, 9:00 AM – 6:00 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,

        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Frequently Asked\nQuestions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    height: 0.95,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 48),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                itemCount: faqList.length,
                itemBuilder: (context, index) {
                  bool isExpanded = expandedIndex == index;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: faqItem(index: index, isExpanded: isExpanded),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Column(
                children: [
                  Text('StayBuddy v1.0.0', style: TextStyle(fontSize: 17)),
                  SizedBox(height: 3),
                  Text('Made with ❤️ in India', style: TextStyle(fontSize: 17)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const UserNavBar(selectedIndex: 3),
    );
  }

  Widget faqItem({required int index, required bool isExpanded}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (expandedIndex == index) {
            expandedIndex = -1;
          } else {
            expandedIndex = index;
          }
        });
      },

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE0E0E0), width: 1.5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    faqList[index]['question']!,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.black,
                  size: 28,
                ),
              ],
            ),
            if (isExpanded) ...[
              const SizedBox(height: 8),
              Text(
                faqList[index]['answer']!,
                style: const TextStyle(fontSize: 13, height: 1.05),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
