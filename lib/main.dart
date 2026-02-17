import 'package:flutter/material.dart';

void main() {
  runApp(const InvestechApp());
}

class InvestechApp extends StatelessWidget {
  const InvestechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'Roboto',
        brightness: Brightness.light,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C3E50), // Gris profesional
        elevation: 0,
        title: const Text(
          'Investech',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white.withValues(alpha:0.15),
              radius: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.help_outline,
                  color: Colors.white,
                  size: 22,
                ),
                onPressed: () {
                  // Acción para ayuda
                },
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFF8F9FA),
              const Color(0xFFE9ECEF),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Espaciado superior
                  const SizedBox(height: 20),
                  
                  // Contenedor de la moneda con efecto de sombra
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          const Color(0xFF4A6572).withValues(alpha:0.1),
                          const Color(0xFF2C3E50).withValues(alpha:0.05),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Image.network( 'https://raw.githubusercontent.com/RubenMendozaCastrejon/Act8_6I_FilasCol_0640/refs/heads/master/Dise%C3%B1o_sin_t%C3%ADtulo-removebg-preview.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.5,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.attach_money,
                            size: MediaQuery.of(context).size.width * 0.1,
                            color: const Color(0xFF2C3E50),
                          );
                        },
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 40),
                 
                  
                  const SizedBox(height: 40),
                  
                  // Botón Registro
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2C3E50),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 3,
                      ),
                      child: const Text(
                        'Registro',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Botón Iniciar Sesión
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF2C3E50),
                        side: const BorderSide(color: Color(0xFF2C3E50), width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Iniciar Sesión',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 12),
                  
                  // Olvidé mi contraseña
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Olvidé mi contraseña',
                      style: TextStyle(
                        color: Color(0xFF2C3E50),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  // Tarjeta de características destacadas
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF2C3E50).withValues(alpha:0.1),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          '¿Por qué elegir Investech?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildFeatureIcon(Icons.trending_up, 'Mercados'),
                            _buildFeatureIcon(Icons.security, 'Seguridad'),
                            _buildFeatureIcon(Icons.analytics, 'Análisis'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  // Botón Sobre Nosotros
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF2C3E50),
                        side: const BorderSide(color: Color(0xFF2C3E50)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Sobre Nosotros',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  // Términos y Condiciones
                  const Text(
                    'Términos y Condiciones',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF6C757D),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  
                  const SizedBox(height: 10),
                  
                  // Año y copyright
                  const Text(
                    '© 2024 Investech. Todos los derechos reservados.',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFFADB5BD),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureIcon(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFF2C3E50).withValues(alpha:0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: const Color(0xFF2C3E50),
            size: 25,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}