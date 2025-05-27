import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Util/colors.dart';
import 'package:myapp/work.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int selectedIndex = 0;
  void onItemsSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Work()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 240, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 20,
                ),
                child: Container(
                  height: screenHeight * 0.35,
                  constraints: const BoxConstraints(maxHeight: 300),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 5),
                      // Profile image
                      Container(
                        width: screenWidth * 0.4,
                        height: screenHeight * 0.33,
                        constraints: const BoxConstraints(
                          maxWidth: 190,
                          maxHeight: 290,
                        ),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://raw.githubusercontent.com/Balderrama-Karla-5J/Act1_UIII_ios/refs/heads/main/perfil.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      // Name, email, date of birth and address
                      Flexible(
                        // Cambiado de Expanded a Flexible
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cristina \nYang",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.09,
                                  height: 0.9,
                                  color: primaryColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "Email",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                "YangCrist@hotmail.com",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  height: 0.9,
                                  color: primaryColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "Date of Birth",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                "July, 20, 1971",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  height: 0.9,
                                  color: primaryColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "Address",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                "Zúrich, Suiza",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  height: 0.9,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 40,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    builderItem(0, "Mis datos"),
                    builderItem(1, "Mis pedidos"),
                  ],
                ),
              ),
              // Bio section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 15,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 18,
                          right: 18,
                          left: 18,
                        ),
                        child: Text(
                          "Historial de compra",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          right: 18,
                          left: 18,
                          bottom: 20,
                        ),
                        child: Text(
                          "Medicina 101,Cardiologia 101, Medicina Basica, Medicina General, Cardiologia 102, Medicina Cardiotoracica... ver mas",
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Social media section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 8,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 18,
                          right: 18,
                          left: 18,
                          bottom: 10,
                        ),
                        child: Text(
                          "Redes sociales PortaLibros",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          right: 18,
                          left: 18,
                          bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColor,
                              child: const Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: primaryColor,
                              child: const Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: primaryColor,
                              child: const Icon(
                                FontAwesomeIcons.linkedinIn,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: primaryColor,
                              child: const Icon(
                                FontAwesomeIcons.twitter,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Website and phone section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 8,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: [
                              Text(
                                "Telefono de contacto",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                              const Spacer(),
                              Flexible(
                                // Añadido Flexible para texto largo
                                child: Text(
                                  "656 555 5552",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.04,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: [
                              Text(
                                "Correo de recuperacion",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "cristinayang@hotmail.com",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth * 0.04,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector builderItem(int index, String label) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () {
        onItemsSelected(index);
      },
      child: Container(
        width: 85,
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
