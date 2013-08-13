class ProductsColors < ActiveRecord::Migration
  def change
    execute "CREATE TABLE products_colors
              (
                product_id integer NOT NULL,
                color_id integer NOT NULL,
                CONSTRAINT products_colors_pkey PRIMARY KEY (product_id , color_id )
              )"
  end
end
