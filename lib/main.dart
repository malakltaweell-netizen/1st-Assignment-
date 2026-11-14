import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Three Pages App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/flutter_logo.png', height: 150),
              const SizedBox(height: 24),
              const Icon(Icons.home, size: 50, color: Colors.deepPurple),
              const SizedBox(height: 12),
              const Text('Home Page', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Go to About'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.info_outline, size: 60, color: Colors.deepPurple),
            const SizedBox(height: 16),
            const Text('About Page', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text('This is a simple three-page Flutter application.', textAlign: TextAlign.center),
            ),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/contact'),
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Go to Contact'),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Page')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.contact_mail, size: 60, color: Colors.deepPurple),
            SizedBox(height: 16),
            Text('Contact Page', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('Get in touch with us!'),
          ],
        ),
      ),
    );
  }
}
