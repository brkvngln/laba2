class StringCompressor 
def self.compress(s) 
return s if s.nil? || s.empty? 
comp = '' 
count = 1 
(1...s.length).each do |i| 
if s[i] == s[i - 1] 
count += 1 
else 
comp += "#{s[i - 1]}#{count}" 
count = 1 # сбрасываем счетчик 
end 
end # добавляем последний символ и его количество 
comp += "#{s[-1]}#{count}" 
comp 
end 
def self.main 
s=gets.chomp 
# проверяем, что ввод не пустой 
if !s.empty? compressed_string = compress(s) 
# если сжатая версия не короче исходной, возвращаем исходную строку 
if compressed_string.length < s.length
puts "Сжатая строка: #{compressed_string}" 
else 
puts "Сжатая строка: #{s}" 
end 
else 
puts "Ввод пустой." 
end 
end 
end 
StringCompressor.main