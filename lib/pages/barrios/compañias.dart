import 'package:app_votacion_day/barril.dart';

class Companias extends StatefulWidget {
  const Companias({super.key});

  @override
  State<Companias> createState() => _CompaniasState();
}

class _CompaniasState extends State<Companias> {
  final List<Map<String, dynamic>> _votantes = [
    {
      'nombre': 'Bolla Acosta Blanca Sabina - SI',
      'cedula': '1.229.645',
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
      'nombre': 'Caceres Aranda Sunilda - SF',
      'cedula': '2.930.766',
      'mesa': '2',
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
      'nombre': 'Romero Franco Rosa Secundina - SR',
      'cedula': '5.129.183',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Valdez Espinola Rosa Maria - SR',
      'cedula': '3.553.337',
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

  @override
  void initState() {
    super.initState();
    _votantesFiltrados = _votantes;
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
              onPressed: () {
                setState(() {
                  votante['marcado'] = false;
                });
                Navigator.pop(context);
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
                  onTap: () {
                    Navigator.pop(context);
                  },
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
                /*sText(
                  '>',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),*/
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
                fillColor: Colors.white70,
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
            onChanged: (bool? valorNuevo) {
              if (valorNuevo == true) {
                setState(() {
                  votante['marcado'] = true;
                });
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
