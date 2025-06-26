import 'package:flutter/material.dart';

class ReferAFriendCard extends StatelessWidget {
  const ReferAFriendCard({super.key});

  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin:  EdgeInsets.symmetric(vertical: screenHeight*0.02),
      padding:  EdgeInsets.all(screenWidth*0.04),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF612BD6), Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/Gift 1 1.png',  width: screenWidth * 0.15, 
            height: screenWidth * 0.15,),
          SizedBox(width: screenWidth * 0.03), 

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Refer a friend',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * 0.005),
                const Text(
                  'Invite friends & get ₹300 in\n your wallet!',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                SizedBox(height: screenHeight * 0.01),
                SizedBox(
                  height: screenHeight*0.04,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        // padding: const EdgeInsets.symmetric(horizontal: 100),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Refer now',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
