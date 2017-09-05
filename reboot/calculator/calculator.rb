def calculate(first_number, second_number, operator)
  if operator == "+"
    resultat = first_number.to_i + second_number.to_i
  elsif operator == "-"
    resultat = first_number.to_i - second_number.to_i
  elsif operator == "*"
    resultat = first_number.to_i * second_number.to_i
  elsif operator == "/"
    resultat = first_number.to_i / second_number.to_i
  end
end
