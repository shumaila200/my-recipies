- creating new myrecipies app
 
 minitest

 layout of the application

 Integretion testing

 Model test unit testing

 TDD -design the app functionality based on a test first approch
 Write the test for the functionality

 Build minimum code neccessary to make a each test pass

 Re-factor the code - *code does'nt smell* -clean code, confidence

  look out some sample layout for homepage and comeup with a homepage design

  -creat a mockup!

  -Database and one to many association

  - Relational Database
  - SQL - structure query language
  - ActiveRecord - Abstraction - ruby - translated to SQL


  -Database layer, Associations

  1 to many, many to many

  object Relational Mapper - ORM

  relational database

  has-many

  belong_to
  virtual attributes are
  ORM

  Recipe -
  - recipe should be a valid
  -name should be a present
  - description should be present
  - chef_id should be present
  - maximum length for name and description


  Chef
- chefname should be present 
 -email should be present
 - size restriction on email and chefname
 - email should be vaild format
 - email should be a unique, case insensitive
 -
 chef.rb:

before_save {self.email = email.downcase}
validates :chefname, presence :true length: {maximum: 30}
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email presence:true, length: {maximum: 225},
     format: { with: VALID_EMAIL_REGEX},
     uniqeness: { case_sensitive: false}