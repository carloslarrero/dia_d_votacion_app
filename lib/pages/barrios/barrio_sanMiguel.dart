import 'package:app_votacion_day/barril.dart';

class BarrioSanMiguel extends StatefulWidget {
  const BarrioSanMiguel({super.key});

  @override
  State<BarrioSanMiguel> createState() => _BarrioSanMiguelState();
}

class _BarrioSanMiguelState extends State<BarrioSanMiguel> {
  final List<Map<String, dynamic>> _votantes = [
    {
      'nombre': 'Amarilla Monica Isabel',
      'cedula': '5.973.798',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Benitez Cinthya Paola',
      'cedula': '4.093.660',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Arevalos Rodriguez Marcelino',
      'cedula': '5.263.126',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Bolla De Marinoni Felipa Ediltrudis',
      'cedula': '331.324',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Dejesus De Vergara Ignacia',
      'cedula': '3.408.091',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Hermosilla Cardozo Katherine Maria',
      'cedula': '4.376.200',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Lopez De Dejesus Miguelina',
      'cedula': '2.552.763',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Lopez De Romero Zully Marlene',
      'cedula': '3.446.594',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maidana Villalba Esteban Abel',
      'cedula': '4.004.227',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Mora Chamorro Julia Maria Beatriz',
      'cedula': '2.219.557',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Olmedo De Quiñonez Edalia Bernardita',
      'cedula': '362.322',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Paredes Sotelo Abel Victoriano',
      'cedula': '2.320.754',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Paredez Sotelo Perla Rosalia',
      'cedula': '3.576.697',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Paredez Velozo Victoriano',
      'cedula': '970.398',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Quiñonez Imas miguel Angel',
      'cedula': '156.785',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Roa De Gimenez Esmirna Yolanda',
      'cedula': '567.553',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Gimenez Gustavo Jose',
      'cedula': '1.710.558',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero De Duarte Maria Del Rosario',
      'cedula': '890.074',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Sotelo Virina Cilda',
      'cedula': '1.443.627',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Vergara Ibarra Mario Julian',
      'cedula': '2.250.992',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Vergara Peralta Ignacio',
      'cedula': '1.724.636',
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
                  'Barrio San Miguel',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BarrioSanCaye()),
                    );
                  },
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
