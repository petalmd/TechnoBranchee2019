# Fur Elise
# With some methods
# And 2 ways to call them
# Auteur: Bhacaz

use_bpm 40
use_synth :piano

def croche(note)
  play note
  sleep 1/8.0
end

def noire_pointe(note)
  play note
  sleep 3/8.0
end

def part_one
  # Partie 1 >>
  2.times do
    croche :E5
    croche :Ds5
  end
  
  croche :E5
  
  croche :A4
  croche :D5
  croche :C5
  noire_pointe :A4
  # << Partie 1
end

def monte_one
  # Montee 1 >>
  croche :D4
  croche :E
  croche :A
  noire_pointe :B
  # << Montee 1
end

def monte_two
  # Montee 2 >>
  croche :E4
  croche :Gs
  croche :B
  noire_pointe :C5
  # << Montee 2
end

def monte_three
  # Montee 3 >>
  croche :E
  croche :C5
  croche :B
  noire_pointe :A
  # << Montee 3
end

# Iteration 1
puts 'First refactoring'
part_one
monte_one
monte_two

part_one
monte_one
monte_three


sleep 2

# Iteration 2
puts 'Second refactoring'
(1..2).each do |time|
  part_one
  monte_one
  
  if time == 1
    monte_two
  else
    monte_three
  end
end

