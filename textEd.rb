#no need to require libraries since all libraries will be ...
#...called from main


# text area class
def add_text_area  
    @txt = FXText.new(self, :opts => TEXT_WORDWRAP|LAYOUT_FILL)  
    @txt.text = "hello world"  
  end  