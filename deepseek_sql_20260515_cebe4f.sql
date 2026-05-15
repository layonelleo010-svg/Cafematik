-- Productos
CREATE TABLE productos (
  id INTEGER PRIMARY KEY,
  nombre TEXT,         -- 'Café', 'Chocolate', 'Capuchino'
  precio_venta REAL
);

-- Recetas (insumos por producto)
CREATE TABLE recetas (
  id_producto INTEGER,
  id_insumo INTEGER,
  cantidad REAL,       -- gramos, ml o unidades
  FOREIGN KEY...
);

-- Insumos
CREATE TABLE insumos (
  id INTEGER PRIMARY KEY,
  nombre TEXT,
  costo_unitario REAL,
  unidad TEXT,         -- 'gr', 'ml', 'unidad'
  stock_actual REAL
);

-- Ventas diarias
CREATE TABLE ventas (
  id INTEGER PRIMARY KEY,
  fecha TEXT,
  id_producto INTEGER,
  vasos_maquina INTEGER,
  efectivo_recolectado REAL,
  vasos_reales INTEGER,   -- puede ser editado
  diferencia REAL,
  nota TEXT,
  resuelta INTEGER DEFAULT 0
);

-- Gastos operativos
CREATE TABLE gastos (
  id INTEGER PRIMARY KEY,
  fecha TEXT,
  categoria TEXT,
  descripcion TEXT,
  monto REAL
);