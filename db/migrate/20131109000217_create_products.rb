class CreateProducts < ActiveRecord::Migration

  def up
    suppress_messages do
      execute <<-SQL
      CREATE TABLE IF NOT EXISTS PRODUCTS_ (
        ID_ int auto_increment,
        NAME_ varchar(255),
        primary key (ID_)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;
      SQL
      execute <<-SQL
      CREATE VIEW products AS
        SELECT ID_ as id, NAME_ as name
        FROM PRODUCTS_;
      SQL
    end
  end

  def down
    suppress_messages do
      execute <<-SQL
      DROP VIEW IF EXISTS products;
      SQL
      execute <<-SQL
      DROP TABLE IF EXISTS PRODUCTS_;
      SQL
    end
  end

end
