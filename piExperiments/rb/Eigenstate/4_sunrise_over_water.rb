# Sunrise Over Water

use_bpm 90
use_synth :kalimba

with_fx :reverb, mix: 0.5, room: 0.7 do
  live_loop :deep_bass do
    play :F2, attack: 1, release: 4, amp: 0.4
    sleep 8
  end
  
  live_loop :shimmering_notes do
    use_synth :pluck
    play choose([:C4, :E4, :G4, :A4]), attack: 0.5, release: 2, amp: 0.5
    sleep 4
  end
  
  live_loop :rhythmic_pulse do
    sample :bd_haus, amp: 0.4, rate: 1
    sleep 0.75
    sample :elec_blip, amp: 0.2, rate: 1.5
    sleep 0.75
  end
  
  live_loop :hihat do
    sample :drum_cymbal_closed, amp: 0.2, rate: 2
    sleep 0.25
  end
  
  live_loop :ambient_texture do
    use_synth :sine
    play choose([:C5, :G5, :E5]), attack: 1, release: 3, amp: 0.3
    sleep 6
  end
end
