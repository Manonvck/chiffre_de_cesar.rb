puts "texte :"
texte = gets.chomp
puts "quel chiffrement ?"
var = gets.chomp.to_i

letters = texte.split("")

letters.each do |letter|
  l = letter.ord
  lvar = l + var
  num = l % var

  if (l > 64) && (l < 91)
    if  lvar > 90
      print "#{(num.to_i + 64).chr}"
    elsif lvar < 91
      print "#{lvar.chr}"
    end
  elsif (l > 96) && (l < 123)
    if  lvar > 122
      print "#{(num.to_i + 95).chr}"
    elsif lvar < 123
      print "#{lvar.chr}"
    end
  else 
    print l.chr
  end
end