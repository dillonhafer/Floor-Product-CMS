class ProductsPatterns < ActiveRecord::Migration
  def change
    execute "CREATE TABLE products_patterns
              (
                product_id integer NOT NULL,
                pattern_id integer NOT NULL,
                CONSTRAINT products_patterns_pkey PRIMARY KEY (product_id , pattern_id )
              )"
  end
end
