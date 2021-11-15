class vegetales{
  final int verduraId;
  final int mercado;
  final String verdura;
  final int precio;
  final String imagen;

vegetales({
   this.verduraId,
   this.mercado,
   this.verdura,
   this.precio,
   this.imagen,
});

factory vegetales.fromJson(Map<String, dynamic> json){
  return vegetales(
    verduraId: json['verduraId'],
    mercado: json['mercado'],
    verdura: json['verdura'],
    precio: json['precio'],
    imagen: json['imagen'],
  );
}
}