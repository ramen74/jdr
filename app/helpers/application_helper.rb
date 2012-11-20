module ApplicationHelper

  #put spaces in text that have been put in the DB.
  def ftext(text)
     txt = simple_format text
     txt.gsub! /<p>|<\/p>/, ''
  end


#things I use commonly
 
#  def snippet(mytext, wordcount)
#       snip =  mytext.split[0..(wordcount-1)].join(" ") +(mytext.split.size > wordcount ? "…" : "")
##       $stdout.puts "DEBUG::" + snip
#       return snip
#  end

#  def fmt_dollars(amt)
#    sprintf("$%0.2f", amt)
#  end

end
