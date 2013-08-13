class ProductsWarranties < ActiveRecord::Migration
  def change
    execute "CREATE TABLE products_warranties
              (
                product_id integer NOT NULL,
                product_warranty_id integer NOT NULL,
                CONSTRAINT products_product_warranties_pkey PRIMARY KEY (product_id , product_warranty_id )
              )"
  end
end
