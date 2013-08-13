class ProductsTextures < ActiveRecord::Migration
  def change
    execute "CREATE TABLE products_textures
              (
                product_id integer NOT NULL,
                texture_id integer NOT NULL,
                CONSTRAINT products_textures_pkey PRIMARY KEY (product_id , texture_id )
              )"
  end
end
