# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Categorium.create([{
  nombre: "Fototortas",
  imagen: "https://cdn.pixabay.com/photo/2016/06/21/21/26/cake-1471989__480.jpg"
}, {
    nombre: "Galletas",
    imagen: "https://cdn.pixabay.com/photo/2019/02/08/22/28/valentines-day-3984154_960_720.jpg"
}, {
    nombre: "Pastelitos",
    imagen: "https://cdn.pixabay.com/photo/2020/05/11/15/06/food-5158702_960_720.jpg"
}, {
    nombre: "Eventos",
    imagen: "https://cdn.pixabay.com/photo/2016/03/27/20/54/wedding-reception-1284245_960_720.jpg"
}])

Producto.create([{
  nombre: "Torta de chocolate",
  descripcion: "Ricas torta con la foto que tu quieras",
  imagen: "https://cdn.pixabay.com/photo/2016/02/11/20/06/baker-1194428_960_720.jpg",
  categorium_id: Categorium.first.id
}, {
  nombre: "Torta de panqueque naranja",
  descripcion: "Con mucho sabor a naranja y tambien se puede agregar crema",
  imagen: "https://cdn.pixabay.com/photo/2018/03/21/14/41/cake-3246925_960_720.png",
  categorium_id: Categorium.last.id
}, {
  nombre: "Masitas dulces",
  descripcion: "Todo tipo de pasteles y masas",
  imagen: "https://cdn.pixabay.com/photo/2018/05/03/10/10/muffins-3370959__340.jpg",
  categorium_id: Categorium.where(nombre: "Pastelitos").first.id
}, {
  nombre: "Cumpleaños",
  descripcion: "Hacemos la fiesta por usted",
  imagen: "https://cdn.pixabay.com/photo/2016/10/31/19/04/balloons-1786430_960_720.jpg",
   categorium_id: Categorium.where(nombre: "Eventos").first.id
}, {
  nombre: "Delicias",
  descripcion: "Galletas con frambueza y cubiertas con un exquisito chocolate",
  imagen: "https://cdn.pixabay.com/photo/2018/02/04/10/31/dessert-3129511_960_720.jpg",
   categorium_id: Categorium.where(nombre: "Galletas").first.id
}, {
  nombre: "Lenguitas de gato",
  descripcion: "Suave galleta que se derrite en tu boca",
  imagen: "https://cdn.pixabay.com/photo/2014/01/15/21/28/shortbread-cookies-246087_960_720.jpg",
   categorium_id: Categorium.where(nombre: "Galletas").first.id
}, {
  nombre: "Trenza de crema",
  descripcion: "Masa trenzada con crema pastelera y crema de leche",
  imagen: "https://cdn.pixabay.com/photo/2020/04/12/19/10/pastries-5035427_960_720.jpg",
   categorium_id: Categorium.where(nombre: "Pastelitos").first.id
}, {
  nombre: "Desayuno Sorpresa",
  descripcion: "Sorprende a quien tu quieras con un rico desayuno artesanal",
  imagen: "https://cdn.pixabay.com/photo/2015/03/26/09/42/breakfast-690128_960_720.jpg",
   categorium_id: Categorium.where(nombre: "Eventos").first.id 
}])
