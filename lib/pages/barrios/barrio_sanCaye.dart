import 'package:app_votacion_day/barril.dart';

class BarrioSanCaye extends StatefulWidget {
  final VoidCallback onBack;
  final VoidCallback onNext;
  const BarrioSanCaye({super.key, required this.onBack, required this.onNext});

  @override
  State<BarrioSanCaye> createState() => _BarrioSanCayeState();
}

class _BarrioSanCayeState extends State<BarrioSanCaye> {
  final List<Map<String, dynamic>> _votantes = [
    {
      'nombre': 'Fernandez Florentin Fabian',
      'cedula': '5.734.914',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Fernandez Florentin Tatiana',
      'cedula': '5.734.921',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Fernandez Valdez Vicente',
      'cedula': '2.335.308',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Florentin De Fernandez Ramona',
      'cedula': '2.365.790',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Gutierrez Medina Jose Higinio',
      'cedula': '5.167.709',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Soto Fernandez Nora Beatriz',
      'cedula': '1.180.086',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Valenzuela Romero Alba Graciela',
      'cedula': '653.284',
      'mesa': '8',
      'marcado': false,
    },
  ];

  List<Map<String, dynamic>> _votantesFiltrados = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _votantesFiltrados = _votantes;
    _cargarEstadoLocal();
  }

  Future<void> _cargarEstadoLocal() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      for (var votante in _votantes) {
        votante['marcado'] = prefs.getBool(votante['cedula']) ?? false;
      }
      _votantesFiltrados = List.from(_votantes);
      if (_searchController.text.isNotEmpty) {
        _filtrarVotantes(_searchController.text);
      }
    });
  }

  Future<void> _guardarEstadoLocal(String cedula, bool valor) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(cedula, valor);
  }

  void _filtrarVotantes(String query) {
    setState(() {
      if (query.isEmpty) {
        _votantesFiltrados = _votantes;
      } else {
        _votantesFiltrados = _votantes.where((votante) {
          final nombre = votante['nombre'].toString().toLowerCase();
          final cedula = votante['cedula'].toString().replaceAll('.', '');
          final input = query.toLowerCase().replaceAll('.', '');

          return nombre.contains(input) || cedula.contains(input);
        }).toList();
      }
    });
  }

  void _mostrarAlertaDesmarcar(
    BuildContext context,
    Map<String, dynamic> votante,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmación'),
          content: Text(
            '¿Estás seguro que deseas desmarcar a ${votante['nombre']}?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            TextButton(
              onPressed: () async {
                setState(() {
                  votante['marcado'] = false;
                });
                await _guardarEstadoLocal(votante['cedula'], false);
                if (context.mounted) Navigator.pop(context);
              },
              child: const Text(
                'Sí',
                style: TextStyle(color: Color.fromARGB(255, 177, 12, 0)),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Marcela Romero Lista 2 Opcion 7',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 177, 12, 0),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: widget.onBack,
                  child: Text(
                    '<',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Barrio San Cayetano',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: widget.onNext,
                  child: Text(
                    '>',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(255, 177, 12, 0)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: _searchController,
              onChanged: _filtrarVotantes,
              decoration: InputDecoration(
                hintText: 'Buscar por nombre o cédula',
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 177, 12, 0),
                ),
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: _votantesFiltrados.map((votante) {
                  return Column(
                    children: [
                      _buildFilaVotante(votante),
                      const Divider(
                        color: Colors.black26,
                        height: 1,
                        thickness: 1,
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilaVotante(Map<String, dynamic> votante) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  votante['nombre'],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'C.I.: ${votante['cedula']}',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Mesa: ${votante['mesa']}',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Checkbox(
            activeColor: const Color.fromARGB(255, 177, 12, 0),
            value: votante['marcado'],
            onChanged: (bool? valorNuevo) async {
              if (valorNuevo == true) {
                setState(() {
                  votante['marcado'] = true;
                });
                await _guardarEstadoLocal(votante['cedula'], true);
              } else {
                _mostrarAlertaDesmarcar(context, votante);
              }
            },
          ),
        ],
      ),
    );
  }
}
