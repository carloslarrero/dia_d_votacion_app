import 'package:app_votacion_day/barril.dart'; // Asegúrate de que tus páginas estén aquí

class ContenedorBarrios extends StatefulWidget {
  const ContenedorBarrios({super.key});

  @override
  State<ContenedorBarrios> createState() => _ContenedorBarriosState();
}

class _ContenedorBarriosState extends State<ContenedorBarrios> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _cambiarPagina(int pagina) {
    _pageController.animateToPage(
      pagina,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        // physics: const NeverScrollableScrollPhysics(), //para navegacion solo con botones descomentar
        children: [
          PrincipalPage(onNext: () => _cambiarPagina(1)), //0
          BarrioFatima(
            //1
            onBack: () => _cambiarPagina(0),
            onNext: () => _cambiarPagina(2),
          ),
          BarrioCaacupe(
            //2
            onBack: () => _cambiarPagina(1),
            onNext: () => _cambiarPagina(3),
          ),
          BarrioSanMiguel(
            //3
            onBack: () => _cambiarPagina(2),
            onNext: () => _cambiarPagina(4),
          ),
          BarrioSanCaye(
            //4
            onBack: () => _cambiarPagina(3),
            onNext: () => _cambiarPagina(5),
          ),
          Companias(onBack: () => _cambiarPagina(4)), //5
        ],
      ),
    );
  }
}
