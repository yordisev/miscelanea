import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemMenu {
  final String titulo;
  final IconData icono;
  final String ruta;

  ItemMenu(this.titulo, this.icono, this.ruta);
}

final menuItems = <ItemMenu>[
  ItemMenu('Giroscopio', Icons.download, '/giroscopio'),
  ItemMenu('Biometrico', Icons.fingerprint, '/biometrico'),
  ItemMenu('Googleadmob', Icons.gpp_good_outlined, '/anuncios'),
  ItemMenu('Giroscopio', Icons.download, '/giroscopio'),
  ItemMenu('Giroscopio', Icons.download, '/giroscopio'),
];

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: menuItems
          .map((item) => InicioMenuItem(
              titulo: item.titulo, ruta: item.ruta, icono: item.icono))
          .toList(),
    );
  }
}

class InicioMenuItem extends StatelessWidget {
  final String titulo;
  final IconData icono;
  final String ruta;
  final List<Color> bgcolors;
  const InicioMenuItem(
      {super.key,
      required this.titulo,
      required this.icono,
      required this.ruta,
      this.bgcolors = const [
        Colors.deepOrange,
        Colors.red
      ]}); //const [Colors.lightBlue, Colors.blue]

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(ruta),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: bgcolors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              color: Colors.white,
              size: 40,
            ),
            const SizedBox(height: 10),
            Text(
              titulo,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
