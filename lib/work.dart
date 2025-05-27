import 'package:flutter/material.dart';
import 'package:myapp/Util/colors.dart';
import 'package:myapp/user_profile_page.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  int selectedIndex = 1;
  void onItemsSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const UserProfilePage()),
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
                      // Información del trabajo
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cristina Yang",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.09,
                                  height: 0.9,
                                  color: primaryColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "Cliente",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                "Ocasional",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  height: 0.9,
                                  color: primaryColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "Se unio en:",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                "sep 2022",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  height: 0.9,
                                  color: primaryColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                "Tiempo en la aplicacion",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                "2 años",
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
                      const SizedBox(width: 15),
                      // Imagen de perfil
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
                              'https://raw.githubusercontent.com/Balderrama-Karla-5J/UIIIAct2-flutter1149/refs/heads/main/perfil.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
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
                    builderItem(1, "Mis Pedidos"),
                  ],
                ),
              ),
              // Sección de proyectos
              _buildProjectStats(
                "8",
                "Pedidos\nRealizados",
                "10",
                "libros\ncomprados",
              ),
              _buildProjectStats("0", "Libros\nvendidos", "3", "reseñas"),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectStats(
    String number,
    String name,
    String number1,
    String name1,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 50,
                    child: Text(
                      number,
                      style: TextStyle(fontSize: 65, color: primaryColor),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    left: 50,
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 28, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 50,
                    child: Text(
                      number1,
                      style: TextStyle(fontSize: 65, color: primaryColor),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    left: 50,
                    child: Text(
                      name1,
                      style: TextStyle(fontSize: 28, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
