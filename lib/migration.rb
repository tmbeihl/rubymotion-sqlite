class Migration
  


end


=begin


database.create_table(tablename, columns)
database.drop_table(tablename)
database.rename_table(oldtable,newtable)
database.rename_table(oldtablename, newtablename)
database.action.to_sql

have a table migration in DB with one value


schema


column types
:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:primary_key
:string
:text
:time
:timestamp

migration version numbers

table.add_column(columnname,type, constraint)
table.remove_column(columnname)

table.rename_column(oldname,newname)
table.add_constraint(column,constraint)


table.action.to_sql


default fields
id
timestamps

rails activerecord examples

add_column :accounts, :ssl_enabled, :boolean, :default => 1

remove_column :accounts, :ssl_enabled


class AddSystemSettings < ActiveRecord::Migration
  def up
    create_table :system_settings do |t|
      t.string  :name
      t.string  :label
      t.text    :value
      t.string  :type
      t.integer :position
    end

    SystemSetting.create  :name => "notice",
                          :label => "Use notice?",
                          :value => 1
  end

  def down
    drop_table :system_settings
  end
end


create_table(name, options) Creates a table called name and makes the table object available to a block that can then add columns to it, following the same format as add_column. See example above. The options hash is for fragments like "DEFAULT CHARSET=UTF-8" that are appended to the create table definition.

drop_table(name): Drops the table called name.

rename_table(old_name, new_name): Renames the table called old_name to new_name.

add_column(table_name, column_name, type, options): Adds a new column to the table called table_name named column_name specified to be one of the following types: :string, :text, :integer, :float, :decimal, :datetime, :timestamp, :time, :date, :binary, :boolean. A default value can be specified by passing an options hash like { :default => 11 }. Other options include :limit and :null (e.g. { :limit => 50, :null => false }) -- see ActiveRecord::ConnectionAdapters::TableDefinition#column for details.

rename_column(table_name, column_name, new_column_name): Renames a column but keeps the type and content.

change_column(table_name, column_name, type, options): Changes the column to a different type using the same parameters as add_column.

remove_column(table_name, column_names): Removes the column listed in column_names from the table called table_name.

add_index(table_name, column_names, options): Adds a new index with the name of the column. Other options include :name, :unique (e.g. { :name => "users_name_index", :unique => true }) and :order (e.g. { :order => {:name => :desc} }</tt>).

remove_index(table_name, :column => column_name): Removes the index specified by column_name.

remove_index(table_name, :name => index_name): Removes the index specified by index_name.




A migration is a subclass of ActiveRecord::Migration that implements two methods: up (perform the required transformations) and down (revert them).

Active Record provides methods that perform common data definition tasks in a database independent way 

add_column
add_index
change_column
change_table
create_table
drop_table
remove_column
remove_index
rename_column
=end  