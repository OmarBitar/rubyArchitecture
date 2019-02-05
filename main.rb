# Edited 2/5/2019 by Omar Bitar
# the recomended way of creating fxruby app  
require 'fox16'
include Fox
#include all the class folders here: -
require './menu.rb'
require './textEd.rb'
#------------------------------------------------------------
#IMPORTANT: all classes and functions will be defined on ...
#... thier own seprate files. some functions may be ...
#... defined on main only if necessary.
#------------------------------------------------------------
class HelloWorld < FXMainWindow

  def initialize(app, title, w, h)
    super(app, title, :width => w, :height => h) 
    #place all panel calls here: -
    addMenuBar      #   <----
    add_text_area   #   <----
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end

end
# recomended way to start fxRuby app
if __FILE__ == $0
    FXApp.new do |app|
      HelloWorld.new(app, "Simple Text Editor", 600, 400)  
      app.create
      app.run
    end
  end