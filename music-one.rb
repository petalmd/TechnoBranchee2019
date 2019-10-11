use_bpm 168

define :randomDrums do
  loop do
    if one_in(2)
      sample :drum_heavy_kick
    else
      sample :drum_cymbal_closed
    end
    sleep 0.5
  end
end

in_thread do
  randomDrums
end

define :melody do
  play 55, release: 4
  sleep 3
  play 48, release: 4
  sleep 3
  play 51
  sleep 0.5
  play 53
  sleep 0.5
  play 55, release: 2
  sleep 2
  play 48, release: 4
  sleep 2
  play 51
  sleep 0.5
  play 53
  sleep 0.5
  
  3.times do
    play 50
    sleep 1
    play 43
    sleep 1
    play 46
    sleep 0.5
    play 48
    sleep 0.5
  end
  play 50
  sleep 1
  play 43
  sleep 1
  play 46
  sleep 1
  
  play 53, release: 4 #Fá
  sleep 3
  play 46, release: 4 #Dó
  sleep 3
  play 51 #Mi bemol
  sleep 0.5
  play 50 #ré
  sleep 0.5
  play 53, release: 2 #fá
  sleep 2
  play 46, release: 2 #si bemol
  sleep 2
  play 51
  sleep 0.5
  play 50
  sleep 0.5
  
  3.times do
    play 48 #dó
    sleep 1
    play 43 #sol grave
    sleep 1
    play 44
    sleep 0.5
    play 46
    sleep 0.5
  end
  play 48
  sleep 1
  play 43
  sleep 1
  play 44
  sleep 1
end

in_thread do
  use_synth :blade
  play melody
end

define :pattern do
  4.times do
    play 55
    sleep 1
    play 48
    sleep 1
    play 51
    sleep 0.5
    play 53
    sleep 0.5
  end
  
  4.times do
    play 55
    sleep 1
    play 48
    sleep 1
    play 52
    sleep 0.5
    play 53
    sleep 0.5
  end
end

in_thread do
  loop do
    pattern
  end
end