import 'package:flutter/material.dart';
import '../widgets/poster_card.dart';

class CarteleraScreen extends StatelessWidget {
  const CarteleraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de ejemplos de carteles
    final posters = [
      {
        'title': 'Evento de Música',
        'subtitle': '15 de Junio, 2025',
        'description': 'Un gran concierto con los mejores artistas locales',
        'imagePath': 'assets/images/posters/poster1.jpg',
        'fontFamily': 'Pacifico',
        'color': Colors.blue,
      },
      {
        'title': 'Exposición de Arte',
        'subtitle': '20 de Julio, 2025',
        'description': 'Muestra de pinturas y esculturas contemporáneas',
        'imagePath': 'assets/images/posters/poster2.jpg',
        'fontFamily': 'Roboto',
        'color': Colors.orange,
      },
      {
        'title': 'Festival de Cine',
        'subtitle': '5 de Agosto, 2025',
        'description': 'Proyecciones de películas independientes y debates',
        'imagePath': 'assets/images/posters/poster1.jpg',
        'fontFamily': 'Montserrat',
        'color': Colors.red,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mi Cartelera',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgrounds/background.jpg'),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: posters.length,
            itemBuilder: (context, index) {
              final poster = posters[index];
              return PosterCard(
                title: poster['title'] as String,
                subtitle: poster['subtitle'] as String,
                description: poster['description'] as String,
                imagePath: poster['imagePath'] as String,
                fontFamily: poster['fontFamily'] as String,
                color: poster['color'] as Color,
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí puedes agregar funcionalidad para añadir nuevos carteles
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Función para agregar nuevo cartel'),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}