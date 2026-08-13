import 'package:flutter/material.dart';

void main() {
  runApp(const ElSombreroDeAntonioApp());
}

class ElSombreroDeAntonioApp extends StatelessWidget {
  const ElSombreroDeAntonioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El Sombrero de Antonio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE8E4D9), // Color papel viejo
        primaryColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Serif', color: Colors.black, fontSize: 18, height: 1.4),
          titleLarge: TextStyle(fontFamily: 'Serif', color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ComicReaderScreen(),
      },
    );
  }
}

class ComicReaderScreen extends StatefulWidget {
  const ComicReaderScreen({super.key});

  @override
  State<ComicReaderScreen> createState() => _ComicReaderScreenState();
}

class _ComicReaderScreenState extends State<ComicReaderScreen> {
  final PageController _pageController = PageController();

  final List<Map<String, dynamic>> panels = [
    {
      'title': 'El Hallazgo',
      'text': 'En un rincón olvidado del desván, cubierto por el polvo del tiempo y las telarañas de la memoria, Samuel encontró un sombrero. No era un sombrero cualquiera; era el sombrero de su abuelo Antonio, tejido con hilos de historias pasadas y bordado con los sueños de generaciones.',
      'icon': Icons.horizontal_rule_sharp,
      'art': _GrabadoArtBox(
        children: [
          Positioned(bottom: 20, left: 50, child: Icon(Icons.home, size: 100)),
          Positioned(top: 40, right: 40, child: Icon(Icons.waves, size: 80)),
          Positioned(top: 80, left: 100, child: Icon(Icons.wb_sunny, size: 60)),
        ],
      )
    },
    {
      'title': 'El Legado',
      'text': '—Este sombrero fue de tu abuelo Antonio —le explicó su mamá con una sonrisa—. Él quería que lo tuvieras cuando fueras lo suficientemente grande para entender su valor.\nSu madre siempre le hablaba del abuelo Antonio, un hombre sabio y bondadoso.',
      'icon': Icons.account_circle,
      'art': _GrabadoArtBox(
        children: [
          Positioned(bottom: 10, left: 30, child: Icon(Icons.person, size: 120)),
          Positioned(bottom: 10, right: 30, child: Icon(Icons.person_outline, size: 90)),
          Positioned(top: 20, left: 80, child: Icon(Icons.star, size: 40)),
        ],
      )
    },
    {
      'title': 'La Magia',
      'text': 'Al ponérselo, los bordes del mundo real se desdibujaron, y ante él se desplegó una cinta de recuerdos vívidos, como si el sombrero fuera una llave a las memorias de su abuelo. Vio a un joven Antonio, enfrentando desafíos con una sonrisa.',
      'icon': Icons.auto_awesome,
      'art': _GrabadoArtBox(
        children: [
          Positioned(center: true, child: Icon(Icons.cyclone, size: 150)),
          Positioned(top: 10, left: 10, child: Icon(Icons.blur_on, size: 60)),
          Positioned(bottom: 10, right: 10, child: Icon(Icons.blur_on, size: 60)),
        ],
      )
    },
    {
      'title': 'Tradiciones',
      'text': 'Cada día, Samuel se adentraba más en las historias del sombrero. Vio cómo el abuelo Antonio plantaba un árbol en honor a cada miembro de la familia, cómo preparaba la comida familiar y escribía cartas llenas de consejos.',
      'icon': Icons.park,
      'art': _GrabadoArtBox(
        children: [
          Positioned(bottom: 0, left: 20, child: Icon(Icons.nature, size: 140)),
          Positioned(bottom: 0, right: 20, child: Icon(Icons.nature_people, size: 100)),
          Positioned(top: 20, center: true, child: Icon(Icons.menu_book, size: 50)),
        ],
      )
    },
    {
      'title': 'El Sueño Incompleto',
      'text': 'Samuel descubrió algo que nunca imaginó: una tradición que su abuelo había comenzado, pero nunca pudo completar.\nAntonio había soñado con crear un jardín lleno de flores y árboles, un lugar de unión y recuerdo.',
      'icon': Icons.broken_image,
      'art': _GrabadoArtBox(
        children: [
          Positioned(center: true, child: Icon(Icons.local_florist, size: 120, color: Colors.black54)),
          Positioned(top: 40, left: 40, child: Icon(Icons.eco, size: 60)),
          Positioned(bottom: 40, right: 40, child: Icon(Icons.eco_outlined, size: 60)),
        ],
      )
    },
    {
      'title': 'El Jardín',
      'text': 'Movido por un profundo deseo, Samuel decidió continuar con la tradición. Con ayuda de su mamá, comenzaron a plantar el jardín, cada planta una historia. Poco a poco, el jardín de los recuerdos tomó forma.',
      'icon': Icons.agriculture,
      'art': _GrabadoArtBox(
        children: [
          Positioned(bottom: 10, left: 10, child: Icon(Icons.grass, size: 80)),
          Positioned(bottom: 10, right: 10, child: Icon(Icons.grass, size: 80)),
          Positioned(bottom: 10, center: true, child: Icon(Icons.local_florist, size: 110)),
          Positioned(top: 20, center: true, child: Icon(Icons.wb_sunny, size: 70)),
        ],
      )
    },
    {
      'title': 'El Puente',
      'text': 'El día que terminaron, Samuel se sentó en el jardín con el sombrero. Sintió que el abuelo estaba allí, sonriendo con orgullo.\n—Abuelo, lo hemos logrado —susurró.\nY juraría haber escuchado su risa entre las hojas.',
      'icon': Icons.bridge,
      'art': _GrabadoArtBox(
        children: [
          Positioned(bottom: 20, center: true, child: Icon(Icons.nature, size: 160)),
          Positioned(top: 30, right: 30, child: Icon(Icons.air, size: 80)),
          Positioned(bottom: 40, left: 40, child: Icon(Icons.person, size: 60)),
        ],
      )
    },
    {
      'title': 'La Memoria Viva',
      'text': 'El sombrero era un puente entre el pasado y el presente. Samuel aprendió que las tradiciones y los recuerdos son tesoros. Entendió que su misión era mantener viva la llama de la memoria para las futuras generaciones.',
      'icon': Icons.local_fire_department,
      'art': _GrabadoArtBox(
        children: [
          Positioned(center: true, child: Icon(Icons.all_inclusive, size: 150)),
          Positioned(top: 20, left: 20, child: Icon(Icons.favorite, size: 50)),
          Positioned(bottom: 20, right: 20, child: Icon(Icons.favorite, size: 50)),
        ],
      )
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'El Sombrero de Antonio',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(color: Colors.black, thickness: 2, height: 2),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: panels.length,
                itemBuilder: (context, index) {
                  final panel = panels[index];
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 4),
                        color: const Color(0xFFF4F1E1),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(6, 6),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            color: Colors.black,
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  panel['title'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Serif',
                                  ),
                                ),
                                Icon(panel['icon'], color: Colors.white),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: panel['art'],
                            ),
                          ),
                          const Divider(color: Colors.black, thickness: 3, height: 0),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: const Color(0xFFE8E4D9),
                              padding: const EdgeInsets.all(16.0),
                              child: SingleChildScrollView(
                                child: Text(
                                  panel['text'],
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, size: 30),
                    onPressed: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  const Text(
                    'Desliza para continuar',
                    style: TextStyle(fontFamily: 'Serif', fontStyle: FontStyle.italic),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 30),
                    onPressed: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GrabadoArtBox extends StatelessWidget {
  final List<Widget> children;

  const _GrabadoArtBox({required this.children});

  @override
  Widget build(BuildContext context) {
    // A frame that mimics linocut texture and houses the icons
    return Stack(
      children: [
        // Background texture lines
        Positioned.fill(
          child: CustomPaint(
            painter: _GrabadoTexturePainter(),
          ),
        ),
        // Overlay widgets
        ...children.map((child) {
          if (child is Positioned && (child as dynamic).center == true) {
             return Center(child: (child as dynamic).child);
          }
          return child;
        }).toList(),
      ],
    );
  }
}

class Positioned extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final bool center;
  final Widget child;

  const Positioned({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.center = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (center) {
      return Center(child: child);
    }
    return Stack(
      children: [
        flutterPositioned(
          top: top,
          bottom: bottom,
          left: left,
          right: right,
          child: child,
        ),
      ],
    );
  }

  Widget flutterPositioned({double? top, double? bottom, double? left, double? right, required Widget child}) {
    return PositionedWidget(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: child,
    );
  }
}

class PositionedWidget extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget child;

  const PositionedWidget({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.child,
  });
  
  @override
  Widget build(BuildContext context) {
     return Stack(
       children: [
         PositionedDirectional(
           top: top,
           bottom: bottom,
           start: left,
           end: right,
           child: child,
         )
       ]
     );
  }
}

class _GrabadoTexturePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black.withOpacity(0.1)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
      
    final int lineCount = 30;
    for (int i = 0; i < lineCount; i++) {
      double y = (size.height / lineCount) * i;
      canvas.drawLine(Offset(0, y), Offset(size.width, y + (i % 2 == 0 ? 10 : -10)), paint);
    }
    
    for (int i = 0; i < lineCount; i++) {
      double x = (size.width / lineCount) * i;
      canvas.drawLine(Offset(x, 0), Offset(x + (i % 2 == 0 ? 10 : -10), size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
