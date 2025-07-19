def caesar_cipher(text, shift)
  result = ""

  text.each_char do |char|
    if char.match(/[a-z]/)
      # 'a'.ord = 97
      shifted = ((char.ord - 97 + shift) % 26) + 97
      result += shifted.chr
    elsif char.match(/[A-Z]/)
      # 'A'.ord = 65
      shifted = ((char.ord - 65 + shift) % 26) + 65
      result += shifted.chr
    else
      result += char
    end
  end

  result
end
puts caesar_cipher("hello world#!HELLO", 4)