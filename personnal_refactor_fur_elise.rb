# Fur Elise
# With some methods
# And 2 ways to call them
# Author: @Bhacaz
# Refactor: Alex G

use_bpm 40
use_synth :piano

def croche(note)
  play note
  sleep 1/8.0
end

def croche_liste(liste_notes)
  liste_notes.each do |note|
    croche(note)
  end
end

def noire_pointe(note)
  play note
  sleep 3/8.0
end

def part_one
  2.times do
    croche_liste([:E5, :Ds5])
  end
  
  croche_liste([:E5, :A4, :D5, :C5])
  
  noire_pointe :A4
end

def monte_one
  croche_liste([:D4, :E, :A])
  noire_pointe :B
end

def monte_two
  croche_liste([:E4, :Gs, :B])
  noire_pointe :C5
end

def monte_three
  croche :E
  croche :C5
  croche :B
  noire_pointe :A
end

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
