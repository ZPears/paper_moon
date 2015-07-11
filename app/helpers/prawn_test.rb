require "prawn"

words = "These are words"

Prawn::Document.generate("hello.pdf") do
	text words
end