class Post < ActiveRecord::Model
  adapter mysql

  primary id                 : Int
  field title                : String
  field body                 : String
end
