import 'package:app_votacion_day/barril.dart';

class BarrioCaacupe extends StatefulWidget {
  const BarrioCaacupe({super.key});

  @override
  State<BarrioCaacupe> createState() => _BarrioCaacupeState();
}

class _BarrioCaacupeState extends State<BarrioCaacupe> {
  final List<Map<String, dynamic>> _votantes = [
    {
      'nombre': 'Acosta De Gonzalez Celestina',
      'cedula': '610.484',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Aquino Luis Angel',
      'cedula': '1.293.156',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Barreto Cristino',
      'cedula': '4.213.320',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Barreto Eulalio',
      'cedula': '4.401.623',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Espinola Pedro Alcides',
      'cedula': '1.041.617',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Ayala De Imas Sebastiana Aparicia',
      'cedula': '1.011.356',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Barreto De Amarilla Lucia Serafina',
      'cedula': '2.860.770',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Benitez Brahian Ezequiel',
      'cedula': '7.065.617',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Benitez Camila Belen',
      'cedula': '7.045.271',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Benitez Celia Beatriz',
      'cedula': '3.546.385',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Caballero Carlos Willian',
      'cedula': '5.535.309',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Martinez Mariana Elizabeth',
      'cedula': '4.978.044',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cuenca Martinez Sergio Enmanuel',
      'cedula': '6.280.479',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Galeano Teresa Dionicia',
      'cedula': '669.692',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Paredes Susana Elizabeth',
      'cedula': '2.459.479',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gonzalez Acosta Marcos Ivan',
      'cedula': '3.660.672',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gonzalez Ortiz Hipolito Caciano',
      'cedula': '814.829',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Imas Larre Ruben Ignacio',
      'cedula': '890.059',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Komarek Hatlewski Juan Carlos',
      'cedula': '2.900.644',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Komarek Markowicz Helen Lariza',
      'cedula': '5.019.148',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Caballero Eduardo Rafael',
      'cedula': '3.557.153',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Gonzalez Maria Alejandra',
      'cedula': '4.846.473',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Gonzalez Silvana Maria',
      'cedula': '5.869.245',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Quiñonez Livio Gustavo',
      'cedula': '354.935',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Quiñonez Hugo Agustin',
      'cedula': '1.133.701',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Quiñonez Maglio Waldino',
      'cedula': '840.210',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel Gimenez Marian Marcela',
      'cedula': '3.471.720',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel  Gimenez Mirna Raquel',
      'cedula': '3.836.533',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel Godoy Sara Ofelia',
      'cedula': '.872.196',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel Yapari Maria Estelvina',
      'cedula': '2.163.437',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maidana De Bolla Lidia Sirsa',
      'cedula': '2.456.021',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maudslay Galeano Arturo Sebastian',
      'cedula': '3.818.766',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maudslay Galeano Felipe Leonardo',
      'cedula': '5.263.103',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maudslay Galeano Ilse Tatiana',
      'cedula': '3.692.485',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Pereira Oribe Ismael Eliezer',
      'cedula': '6.372.245',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Quiñonez Sanchez Vicente Abdon',
      'cedula': '912.640',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Gonzalez Maria Jose',
      'cedula': '3.806.506',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Zaracho Araujo Elva',
      'cedula': '2.860.710',
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
                  'Barrio Caacupe',
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
                      MaterialPageRoute(builder: (context) => BarrioFatima()),
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
