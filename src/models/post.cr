class Post < ActiveRecord::Model
  adapter mysql

  primary id                 : Int
  field title                : String
  field body                 : String
  field author               : String
  field body                 : String
  field description          : String
  field spotlight            : Int
end
