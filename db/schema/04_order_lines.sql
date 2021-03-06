DROP TABLE IF EXISTS order_lines CASCADE;

CREATE TABLE order_lines (
  id SERIAL PRIMARY KEY NOT NULL,
  order_id INTEGER REFERENCES orders(id) ON DELETE CASCADE,
  dish_id INTEGER REFERENCES dishes(id) ON DELETE CASCADE,
  quantity SMALLINT NOT NULL
);
