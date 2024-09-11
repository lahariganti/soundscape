# Ascending Light

use_bpm 42

use_synth :zawa

with_fx :reverb, room: 0.7, mix: 0.5 do
  with_fx :flanger, cutoff: 50 do
    
    live_loop :bass_layer do
      play choose([:C3, :G3, :E3]), attack: 4, release: 6, amp: 0.3
      sleep 12
    end
    
    live_loop :mid_layer do
      use_synth :blade
      play choose([:C4, :E4, :G4]), attack: 3, release: 5, amp: 0.4
      sleep 10
    end
    
    live_loop :melody do
      use_synth :hollow
      play choose([:C5, :A5]), attack: 4, release: 7, amp: 0.3
      sleep 8
    end
    
    live_loop :percussion do
      sample :elec_ping, rate: 0.5, amp: 0.2
      sleep 16
    end
    
    live_loop :drone do
      use_synth :dark_ambience
      play :C2, attack: 5, release: 12, amp: 0.3, cutoff: 60
      sleep 18
    end
    
  end
end
