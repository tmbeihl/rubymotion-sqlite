class Wordlist < Sqlite

#attr_accessor :id, :word , :length


def id
@values.first["id"].to_i if @values.length ==1  
end  

def word
@values.first["word"] if @values.length ==1  
end  

def length
@values.first["length"].to_i if @values.length ==1  
end  



def initialize
super
@table = 'wordlist'
end

def createTable
sql = "create table wordlist (id INTEGER PRIMARY KEY, word varchar(20),length int, UNIQUE(word));"
silent_execute(sql)
end



def columns
@columns = ["id","word","length"]
end 

#columns and column types and features

# custom code insert

def insert_data(word)
  length = word.length
@result = @db.executeUpdate("insert into wordlist(word,length) values ( '#{word}', #{length})")
end



def dropTable
  sql = "drop table wordlist"
silent_execute(sql)
end  


def truncateTable
dropTable
createTable
end

end  