import 'package:app_votacion_day/barril.dart';

class BarrioFatima extends StatefulWidget {
  final VoidCallback onBack;
  final VoidCallback onNext;
  const BarrioFatima({super.key, required this.onBack, required this.onNext});

  @override
  State<BarrioFatima> createState() => _BarrioFatimaState();
}

class _BarrioFatimaState extends State<BarrioFatima> {
  final List<Map<String, dynamic>> _votantes = [
    {
      'nombre': 'Acosta Calixta',
      'cedula': '2.943.164',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Acosta De Ullon Maria De Las Nieves',
      'cedula': '1.091.782',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Maciel Mirna Beatriz',
      'cedula': '5.678.699',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Maciel Denis Roberto',
      'cedula': '4.498.649',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Bolla Aguilera Araceli',
      'cedula': '4.260.586',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Carrizo Torres Narcisa',
      'cedula': '2.062.651',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Castillo De Bolla Delia Noemi',
      'cedula': '931.990',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Santiago',
      'cedula': '1.339.287',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Ruiz Marta Elizabeth',
      'cedula': '3.400.404',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Ruiz Sara Lucina',
      'cedula': '4.295.821',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Ruiz Carlos Fidel',
      'cedula': '3.617.278',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Fernandez Arregui Victor Manuel',
      'cedula': '1.741.324',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Fernandez Villalba Miguel Angel',
      'cedula': '1.883.636',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Imas Romero Aparicio Dejesus',
      'cedula': '278.971',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Lopez Caceres Maria Isabel',
      'cedula': '6.280.287',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel Barrios Jorgelina Mabel',
      'cedula': '2.014.707',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maidana De Zarza Maria Esperanza',
      'cedula': '2.860.711',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Martinez Gimenez Juan Ruperto',
      'cedula': '2.961.299',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maudslay Maria Gregoria',
      'cedula': '716.480',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Miño Villalba Diego Armando',
      'cedula': '1.735.105',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Ramirez Flores Luis Fernando',
      'cedula': '5.930.607',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Rodriguez Paiva Cecilia Belen',
      'cedula': '7.811.588',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Herminio Luis',
      'cedula': '2.475.826',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Ysabelino',
      'cedula': '1.904.165',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Amarilla Dora Ines',
      'cedula': '2.226.067',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Baez Meuri Melina',
      'cedula': '7.016.398',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero De Bolla Celia Concepcion',
      'cedula': '839.976',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero De Fernandez Maria Eulalia',
      'cedula': '838.808',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero De Svaldi Olga',
      'cedula': '1.039.023',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Gimenez Jesus Maria',
      'cedula': '1.848.203',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Ruiz Zully Yolanda',
      'cedula': '6.983.418',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Rotela Timoteo',
      'cedula': '2.828.770',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Rotela Bolla Rogelio',
      'cedula': '5.269.990',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Ruggeri Lezcano Johana Beatriz',
      'cedula': '5.306.766',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Ruiz Lorenza Elizabeth',
      'cedula': '2.250.959',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Ruiz Lucina Ignacia',
      'cedula': '1.373.232',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Salazar De Dubarry Maria Victoria',
      'cedula': '568.061',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Svaldi Romero Luis Candido',
      'cedula': '1.883.626',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Ullon Acosta Leticia Genoveva',
      'cedula': '2.079.108',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Valdez Karen',
      'cedula': '4.498.668',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Zarza Maidana Librado Jorge',
      'cedula': '1.901.428',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Zarza Romero Nicolas Claudio',
      'cedula': '1.194.059',
      'mesa': '8',
      'marcado': false,
    },
  ];

  List<Map<String, dynamic>> _votantesFiltrados = [];
  final TextEditingController _searchController = TextEditingController();
  int get _totalVotantes => _votantes.length;
  int get _totalMarcados => _votantes.where((v) => v['marcado'] == true).length;

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
                  'Barrio Fatima',
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
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: SafeArea(
              top: false, // Evita margen superior innecesario en Mac/iOS
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Votantes: $_totalVotantes',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Votados: $_totalMarcados',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 177, 12, 0),
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
