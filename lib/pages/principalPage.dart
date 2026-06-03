import 'package:app_votacion_day/barril.dart';

class PrincipalPage extends StatefulWidget {
  final VoidCallback onNext;
  const PrincipalPage({super.key, required this.onNext});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  final List<Map<String, dynamic>> _votantes = [
    {
      'nombre': 'Alderete Cristina',
      'cedula': '1.008.808',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Cespedes Justo Benjamin',
      'cedula': '4.498.798',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Cespedes Maria Noelia',
      'cedula': '7.467.335',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Cespedes Nicolas',
      'cedula': '3.917.671',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Cespedes Fernando Jesús',
      'cedula': '3.235.197',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Cespedes Herminia Beatriz',
      'cedula': '4.498.675',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Lorenzo',
      'cedula': '840.271',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Amarilla Veronica Beatriz',
      'cedula': '5.158.252',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla Cespedes Julian',
      'cedula': '4.498.705',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Amarilla De Ulon Maura Idalina',
      'cedula': '840.207',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Arevalos Alderete Maria Adriana',
      'cedula': '4.093.659',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Arevalos Gonzalez Maria Fernanda',
      'cedula': '4.037.239',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Arevalos Gonzalez Oscar Manuel',
      'cedula': '3.625.843',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Arguello De Leite Perpetua Marina',
      'cedula': '391.586',
      'mesa': '1',
      'marcado': false,
    },
    {
      'nombre': 'Bolla Barreto Nelson Maria',
      'cedula': '1.097.509',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Bolla Rodriguez Juana Elizabeth',
      'cedula': '5.869.283',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Bolla Romero Fernando',
      'cedula': '3.397.328',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Bolla Vergara Fernando José',
      'cedula': '6.325.403',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cano Coscia David Isaac',
      'cedula': '3.473.223',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cabrera Maciel Yonatan Dejesus',
      'cedula': '7.693.317',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cantero Zarza Victor Ramon',
      'cedula': '3.701.922',
      'mesa': '2',
      'marcado': false,
    },
    {
      'nombre': 'Cespedes Diego Vidal',
      'cedula': '1.821.256',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cespedes Simion',
      'cedula': '3.779.385',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cespedes De Amarilla Adriana',
      'cedula': '2.634.738',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cespedes Pereira Benjamina',
      'cedula': '2.634.760',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Cespedes Pereira Nazario',
      'cedula': '2.257.076',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Ferreira Sotelo Mirena Maricel',
      'cedula': '4.502.479',
      'mesa': '3',
      'marcado': false,
    },
    {
      'nombre': 'Gasparini Espinola Mario Roberto',
      'cedula': '1.480.770',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gauto Gimeez Noelia Marlene',
      'cedula': '2.555.683',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Analia',
      'cedula': '7.693.044',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Aurora Amada',
      'cedula': '4.498.679',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Luis Arcadio',
      'cedula': '1.229.716',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez De Gauto Ana Elizabeth',
      'cedula': '2.296.846',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Lujan Francisca Dejesus',
      'cedula': '6.948.133',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Lujan Paola Elizabeth',
      'cedula': '6.759.039',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Lujan Lidia Beatriz',
      'cedula': '3.471.731',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Mereles Julio Enrique',
      'cedula': '4.498.707',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gimenez Mereles Luis Javier',
      'cedula': '2.634.733',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gonzalez Eugenio Ernesto',
      'cedula': '1.621.376',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gonzalez De Arevalos Teresa Dejesus',
      'cedula': '840.235',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gonzalez De Romero Lidia Ester',
      'cedula': '575.239',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Gonzalez Maudslay Santiago',
      'cedula': '674.126',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Guggiari Romero Angelina',
      'cedula': '5.457.148',
      'mesa': '4',
      'marcado': false,
    },
    {
      'nombre': 'Imas Larre Victor Hugo',
      'cedula': '979.380',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Romero Carlos Adolfo',
      'cedula': '5.034.549',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Romero Jaime Tomas',
      'cedula': '5.796.864',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Larre Romero Jose Roodolfo',
      'cedula': '4.396.157',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel Lezcano Francisco Javier',
      'cedula': '6.724.131',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel Lezcano Antonia',
      'cedula': '5.151.664',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maciel Lezcano Maxima',
      'cedula': '3.186.772',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Mancuello Amarilla Maria Hermelinda',
      'cedula': '4.498.713',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Mancuello Amarilla Richar Osmar',
      'cedula': '7.017.428',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maudslay De Romero Beatriz Maria',
      'cedula': '697.248',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Maudslay De Imas Maria Elina',
      'cedula': '790.153',
      'mesa': '5',
      'marcado': false,
    },
    {
      'nombre': 'Medina Cabral Ricardo Javier',
      'cedula': '4.695.958',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Medina Flores Jesus Manuel',
      'cedula': '6.934.552',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Merreles Velazquez Fidelina Maria',
      'cedula': '1.662.220',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Mongelos Mereles Reinaldo Basilio',
      'cedula': '4.963.667',
      'mesa': '6',
      'marcado': false,
    },
    {
      'nombre': 'Paredes Gilberto',
      'cedula': '4.720.143',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Paredes Amarilla Ruben',
      'cedula': '1.621.374',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Pinto Ana Maria',
      'cedula': '3.471.733',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Pinto Katerine',
      'cedula': '6.534.154',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Pintos Bruno',
      'cedula': '6.664.070',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Ramirez Imas John Luis',
      'cedula': '1.079.422',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Rodrguez Servian Ricardo Domingo',
      'cedula': '5.533.748',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Rodrguez Suarez Germina',
      'cedula': '1.724.633',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Bolla Jaime Angel',
      'cedula': '416.063',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Maudslay Marcela Alicia',
      'cedula': '1.183.258',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Maudslay Valeria Analia',
      'cedula': '1.605.842',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Maudslay Veronica Mercedes',
      'cedula': '2.045.834',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Mora Zenon',
      'cedula': '162.652',
      'mesa': '7',
      'marcado': false,
    },
    {
      'nombre': 'Romero Talavera Alan Emanuel',
      'cedula': '4.841.754',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Romero Talavera Cindy Denise',
      'cedula': '3.874.351',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Saldaña Martinez Johana Natalia',
      'cedula': '6.109.069',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Sanchez Fleitas Rosa Elizabeth',
      'cedula': '5.085.708',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Sotelo Yris Josefina',
      'cedula': '4.442.569',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Talavera Silvia Raquel',
      'cedula': '2.250.985',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Ullon Amarilla Hermes Fabricio',
      'cedula': '3.392.537',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Ullon Barreto Hermes Felix',
      'cedula': '790.203',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Ullon Ramirez Felix',
      'cedula': '291.224',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Varela Edilio',
      'cedula': '908.474',
      'mesa': '8',
      'marcado': false,
    },
    {
      'nombre': 'Villalba Romero Maria Elva',
      'cedula': '865.568',
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
                SizedBox(width: 20),
                Text(
                  'Barrio San Juan',
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
