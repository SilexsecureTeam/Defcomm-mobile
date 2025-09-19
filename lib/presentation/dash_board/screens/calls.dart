import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:defcomm_mobile/presentation/dash_board/widgets/current_user_details.dart';
import 'package:defcomm_mobile/presentation/home/widgets/dash_board.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  int _page = 0;
  int _selectedTab = 0; // 0 = Chat, 1 = Calls, 2 = Drive, etc.

  final items = <Widget>[
    ImageIcon(
      AssetImage("assets/icon/home.png"),
      size: 30,
      color: Colors.white,
    ),
    ImageIcon(
      AssetImage("assets/icon/message.png"),
      size: 30,
      color: Colors.white,
    ),
    ImageIcon(
      AssetImage("assets/icon/call_icon.png"),
      size: 30,
      color: Colors.white,
    ),
    ImageIcon(
      AssetImage("assets/icon/user.png"),
      size: 30,
      color: Colors.white,
    ),
    ImageIcon(
      AssetImage("assets/icon/setting.png"),
      size: 30,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background gradient
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3D5008), Color(0xFF000000)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    CurrentUserDetails(imageUrl: 'assets/icon/menu2.png'),
                    const SizedBox(height: 60),

                    // Header buttons
                    DashBoard(
                      title: 'SECURE COMMUNICATIONS',
                      chatOnTap: () => setState(() => _selectedTab = 0),
                      callOnTap: () => setState(() => _selectedTab = 1),
                      driveOnTap: () => setState(() => _selectedTab = 2),
                      secureOnTap: () => setState(() => _selectedTab = 3),
                      militaryOnTap: () => setState(() => _selectedTab = 4),
                    ),

                    const SizedBox(height: 20),

                    // Change content depending on tab
                    IndexedStack(
                      index: _selectedTab,
                      children: [
                        _buildChats(), // Chat tab
                        _buildCalls(), // Calls tab
                        _buildDrive(), // Drive tab
                        _buildSecure(), // Secure tab
                        _buildMilitary(), // Military tab
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Nav (optional, still kept)
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFF3D5008),
        buttonBackgroundColor: Colors.transparent,
        color: Colors.black,
        items: items,
        height: 60,
        index: _page,
        onTap:
            (index) => setState(() {
              _page = index;
            }),
      ),
    );
  }

  // Example pages for tabs
  Widget _buildChats() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text("Chats", style: TextStyle(color: Colors.white, fontSize: 18)),
      SizedBox(height: 10),
      // Put your chats list here
    ],
  );

  Widget _buildCalls() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text("Recent Calls", style: TextStyle(color: Colors.white, fontSize: 18)),
      SizedBox(height: 10),
      // Put your calls list here
    ],
  );

  Widget _buildDrive() =>
      const Text("Drive Section", style: TextStyle(color: Colors.white));
  Widget _buildSecure() =>
      const Text("Secure Section", style: TextStyle(color: Colors.white));
  Widget _buildMilitary() =>
      const Text("Military Section", style: TextStyle(color: Colors.white));
}
