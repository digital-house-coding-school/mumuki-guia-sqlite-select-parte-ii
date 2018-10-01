CREATE TABLE categorias (
  id INTEGER NOT NULL PRIMARY KEY,
  nombre TEXT NOT NULL,
  id_categoria_padre INTEGER DEFAULT NULL,
  FOREIGN KEY(id_categoria_padre) REFERENCES categorias(id)
);

INSERT INTO categorias (id, nombre, id_categoria_padre) VALUES (1,'Electrodomésticos',NULL),(2,'Consolas y videojuegos',NULL),(3,'Celulares',NULL),(4,'Aires acondicionados',NULL),(5,'Informática',NULL),(6,'Comida',NULL),(7,'Bebida',NULL),(8,'Fruta',6),(9,'Verdura',6),(10,'Carnes',6),(11,'Gaseosa',7),(12,'Bebidas alcohólicas',7),(13,'Aguas saborizadas',7),(14,'Aguas',7),(15,'Portátiles',2),(16,'Hornos',1),(17,'Lavarropas',1),(18,'Heladeras',1),(19,'Microondas',1),(20,'Aires acondicionados frío',4),(21,'Aires acondicionados frío/calor',4),(22,'Computadoras',5),(23,'Impresoras',5),(24,'Notebooks',5),(25,'Televisores',NULL),(26,'Pasta',6);

CREATE TABLE marcas (
  id INTEGER NOT NULL PRIMARY KEY,
  nombre TEXT NOT NULL
);

INSERT INTO marcas (id, nombre) VALUES (8,'Apple'),(15,'Coca-Cola'),(1,'HP'),(13,'LG'),(7,'Microsoft'),(9,'Motorola'),(6,'Nintendo'),(14,'Panasonic'),(20,'Patagonia'),(12,'Philco'),(11,'Philips'),(18,'Quilmes'),(2,'Samsung'),(10,'Sanyo'),(17,'Ser'),(5,'Sony'),(16,'Sprite'),(19,'Stella Artois'),(3,'Toshiba'),(4,'TP Link');

CREATE TABLE productos (
  id INTEGER NOT NULL PRIMARY KEY,
  nombre TEXT NOT NULL,
  modelo TEXT DEFAULT NULL,
  id_marca INTEGER DEFAULT NULL,
  descripcion TEXT DEFAULT NULL,
  id_categoria INTEGER NOT NULL,
  precio REAL NOT NULL,
  puntuacion REAL DEFAULT NULL,
  FOREIGN KEY(id_marca) REFERENCES marcas(id),
  FOREIGN KEY(id_categoria) REFERENCES categorias(id)
);

INSERT INTO productos (id, nombre, modelo, id_marca, descripcion, id_categoria, precio, puntuacion) VALUES (1,'TV LED 32\"','SY-XFJQLP-32',10,'Este televisor tiene una pantalla de 32 pulgadas y resolución de 1366x768 (HD Ready)',25,'8000','3.1'),(2,'Manzana roja',NULL,NULL,'Manzana roja origen nacional',8,'5','2.5'),(3,'Manzana verde',NULL,NULL,'Manzana verde originel nacional',8,'5','2.5'),(4,'1kg de bife',NULL,NULL,NULL,10,'129','3.4'),(5,'1kg pechuga de pollo',NULL,NULL,NULL,10,'105','3'),(6,'Fideos tricolor',NULL,NULL,'Fideos de zapallo, zanahoria y espinaca',26,'40','1.9'),(7,'Caja de ravioles de verdura y pollo',NULL,NULL,'Los mejores ravioles de la Argentina',26,'64','2.4'),(8,'Caracolitos',NULL,NULL,'Rica pasta',26,'38','0.9'),(17,'Playstation 3','Slim',5,'Con 2 joysticks',2,'7000','3.6'),(18,'Playstation 4',NULL,5,'La nueva. Con un solo control y un videojuego',2,'8000','4.1'),(19,'Playstation 4 Slim','Slim',5,'Último modelo más finita',2,'8500','4.3'),(20,'Wii','Blanca 250gb',6,'Nintendo Wii excelente para jugar con tus niños',2,'7000','3.2'),(21,'Wii-U','Con mando externo tipo iPad',6,'Nintendo Wii-U que viene con un joystick tipo iPad para controlar a los personajes del videojuego',2,'8000','3.6'),(22,'Nintendo Switch','La última consola de Nintendo',6,'Mama mía',2,'12000','4.6'),(23,'TV Samsung 3D OLED 40\"','SMG-3D-40LXHFG',2,'Alta tele',25,'25000','3.7'),(24,'Smart TV Panasonic 50\"','PNSC-SM50JKGH',14,'Excelente para mirar fútbol',25,'26000','4'),(27,'iPhone 6s','64gb negro',8,'Buen iPhone',3,'14000','4'),(28,'iPhone 6s','128gb blanco',8,'Buen iPhone con mayor capacidad',3,'17000','4.5'),(29,'iPhone 7','128gb negro',8,'Muy buen iPhone',3,'24000','4.8'),(30,'Coca-Cola','1.5lts',15,'Una botella de Coca',11,'36','4.2'),(31,'Coca-Cola','2.25lts',15,'Una botella de Coca más grande',11,'42','3.8'),(32,'Sprite','1.5lts',16,'Una botella de Sprite',11,'34','3.6'),(33,'Agua sabor pomelo','1.5lts',17,'Una botella de agua saborizada',13,'28','3.4'),(34,'Agua sabor naranja','1.5lts',17,'Una botella de agua sabor naranja',13,'28','3.5'),(35,'Cerveza Quilmes','1lt',18,'El sabor del encuentro',12,'22','2.2'),(36,'Cerveza Stella Artois','1lt',19,'Ella es única',12,'30','3.2'),(37,'Cerveza Artesanal Patagonia Amber Ale','750cc',20,'La más rica',12,'42','4.3');

CREATE TABLE clientes (
  id INTEGER NOT NULL PRIMARY KEY,
  nombre TEXT NOT NULL,
  apellido TEXT NOT NULL,
  email TEXT NOT NULL,
  telefono TEXT DEFAULT NULL,
  celular TEXT DEFAULT NULL,
  fecha_de_nacimiento TEXT NOT NULL,
  id_producto_preferido INTEGER DEFAULT NULL,
  FOREIGN KEY(id_producto_preferido) REFERENCES productos(id)
);


INSERT INTO clientes (id, nombre, apellido, email, telefono, celular, fecha_de_nacimiento, id_producto_preferido) VALUES (1,'Sacha','Lifszyc','sacha.lifszyc@gmail.com','46319613','1153980907','1990-08-12 00:00:00',37),(2,'Darío','Susnisky','dario@dh.com','49968901','1130315490','1990-10-03 00:00:00',22),(3,'Javier','Herrera','javi@dh.com','49074344',NULL,'1990-09-01 00:00:00',NULL),(4,'Carla','Zapata','carlazapata@gmail.com',NULL,'1156701024','1986-03-10 00:00:00',29),(5,'Laura','Cortés','laucortes14@hotmail.com',NULL,'1157843301','1978-05-06 00:00:00',NULL),(6,'Martina','Zapata','martuzapata84@hotmail.com','46338998',NULL,'1984-03-07 00:00:00',1),(7,'Martina','Crespo','martucrespo84@hotmail.com','33458912',NULL,'1984-02-12 00:00:00',5);

CREATE TABLE ventas (
  id INTEGER NOT NULL PRIMARY KEY,
  fecha TEXT NOT NULL,
  id_cliente INTEGER NOT NULL,
  id_producto INTEGER DEFAULT NULL,
  cantidad INTEGER NOT NULL,
  FOREIGN KEY(id_cliente) REFERENCES clientes(id),
  FOREIGN KEY(id_producto) REFERENCES productos(id)
);

INSERT INTO ventas (id, fecha, id_cliente, id_producto, cantidad) VALUES (1,'2017-04-28 00:00:00',1,2,5),(2,'2017-04-28 00:00:00',1,3,4),(3,'2017-04-21 00:00:00',2,28,1),(4,'2017-04-20 00:00:00',3,28,1),(5,'2017-04-19 00:00:00',4,28,1),(6,'2017-04-07 00:00:00',1,29,1),(7,'2017-04-14 00:00:00',5,27,1),(8,'2017-03-14 00:00:00',5,29,3),(9,'2017-02-15 00:00:00',2,22,10),(10,'2017-02-15 00:00:00',1,19,1),(11,'2017-02-14 00:00:00',3,18,1),(12,'2016-12-08 00:00:00',5,35,12),(13,'2016-11-12 00:00:00',3,36,1),(14,'2016-11-07 00:00:00',3,35,4),(15,'2016-11-16 00:00:00',3,37,1),(16,'2016-11-12 00:00:00',4,36,6),(17,'2016-07-09 00:00:00',3,35,3),(18,'2016-11-12 00:00:00',1,37,2),(19,'2016-03-08 00:00:00',2,37,2),(20,'2016-08-12 00:00:00',5,35,6),(21,'2016-07-04 00:00:00',3,36,3),(22,'2016-09-10 00:00:00',1,37,1),(23,'2016-02-01 00:00:00',2,35,1),(24,'2015-12-25 00:00:00',2,37,12);