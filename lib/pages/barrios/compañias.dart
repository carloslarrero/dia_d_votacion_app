import 'package:app_votacion_day/barril.dart';

class Companias extends StatefulWidget {
  final VoidCallback onBack;
  const Companias({super.key, required this.onBack});

  @override
  State<Companias> createState() => _CompaniasState();
}

class _CompaniasState extends State<Companias> {
  final List<Map<String, dynamic>> _votantes = [
    {
      'nombre': 'Aguilera Noguera Ireneo - SR',
      'cedula': '1.065.092',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Aguilera Valdez Fredy Ramon - SR',
      'cedula': '3.211.868',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Torres Marilin Elizabeth - SR',
      'cedula': '7.310.581',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Bolla Sixto Joel - CP',
      'cedula': '2.962.128',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Maciel Norma Graciela - CP',
      'cedula': '2.941.755',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Acuña Alvarez Fidel - YT',
      'cedula': '2.976.038',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Barreto Fretes Victor Hugo - SR',
      'cedula': '4.906.379',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Bolla Acosta Blanca Sabina - SI',
      'cedula': '1.229.645',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Bordon Miguel - SR',
      'cedula': '1.610.476',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Britez Apostolaqui Alba Isidora - SR',
      'cedula': '535.798',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cabral Benitez Elbio Daniel - SR',
      'cedula': '5.456.677',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cabral Ortiz Mirna Beatriz - SR',
      'cedula': '3.617.290',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Caceres Aranda Sunilda - SF',
      'cedula': '2.930.766',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cardozo Llanes Nilda Marisol - KP',
      'cedula': '3.917.674',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Cardozo Cristina Belen - KP',
      'cedula': '6.574.357',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Cardozo Rosa Isabel - KP',
      'cedula': '7.314.950',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Cardozo Silvio Ariel - KP',
      'cedula': '7.312.761',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Espinoza Silvio - KP',
      'cedula': '1.980.199',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Dankievicz Buczynki Miguel - SR',
      'cedula': '1.397.249',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Espinola De Valdez Maria Antonia - SR',
      'cedula': '2.380.437',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Fernandez Gimenez Fabian - SRO',
      'cedula': '5.941.535',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Fernandez Gimenez Isacio - SRO',
      'cedula': '4.863.271',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Ferreira Martinez Manuel Ignacio - AY',
      'cedula': '4.498.800',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Fleitas Gauto Roque Antonio - SR',
      'cedula': '4.565.778',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Franco Andrea Celeste - SR',
      'cedula': '5.129.184',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Franco Ever Emilio - SR',
      'cedula': '6.284.904',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Franco Diaz Clara Rosa - SR',
      'cedula': '6.679.405',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Franco Villalba Marcial - SR',
      'cedula': '2.585.157',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Franco Villalba Roque - SR',
      'cedula': '3.016.993',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Franco Villalba Wilfrida - SR',
      'cedula': '3.016.990',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Fretes Juan Ramon - SR',
      'cedula': '4.265.049',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gaona Vera Graciela - AY',
      'cedula': '5.838.616',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gauto Eusebio Asuncion - SR',
      'cedula': '1.083.034',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gauto Britez Ariel - SR',
      'cedula': '5.452.875',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Lopez Caceres Delia Mabel - SF',
      'cedula': '6.236.517',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Lopez Romero Antonio Evaristo - SF',
      'cedula': '1.572.026',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Lujan Franco Amanda Dejesus - CP',
      'cedula': '3.546.378',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Lujan Franco Noelia Dejesus - CP',
      'cedula': '8.222.624',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel Hector Daniel - AY',
      'cedula': '6.603.773',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Ortiz Allende Victor Luis - SR',
      'cedula': '1.279.102',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Oribe Godoy Maria Natividad - KP',
      'cedula': '3.512.449',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Oribe Oribe Juan De La Cruz - KP',
      'cedula': '2.362.485',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Oribe Oribe Lorenzo Luz - KP',
      'cedula': '3.841.670',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Romero Franco Rosa Secundina - SR',
      'cedula': '5.129.183',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Sanabria Acuña Anibal Sebastian - SF',
      'cedula': '5.607.475',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Sanabria Acuña Martina Marilin - SF',
      'cedula': '5.127.481',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Valdez Espinola Rosa Maria - SR',
      'cedula': '3.553.337',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Valdez Espinola Luis Alberto - SR',
      'cedula': '1.704.094',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Valdez De Aguilera Maria Arminda - SR',
      'cedula': '1.474.185',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Valdez Romero Amado - SR',
      'cedula': '1.636.440',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Villalba De Franco Rosalina - SR',
      'cedula': '2.857.349',
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
                  'Compañias - Otros',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
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
