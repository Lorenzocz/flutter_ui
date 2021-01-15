class Categoria {
  const Categoria({this.name, this.cards});
  final String name;
  final List<Cards> cards;
}

class Cards {
  const Cards({this.nombre, this.cosa});
  final String nombre;
  final String cosa;
}

class Items {
  const Items({this.categoria, this.cards});
  final Categoria categoria;
  final Cards cards;
  bool get isCategory => categoria != null;
}

