# 1. Morning Dew

use_bpm 35

use_synth :fm

with_fx :reverb, room: 0.8 do
  live_loop :low_pad do
    play choose([:C3, :F3]), attack: 6, release: 10, amp: 0.3
    sleep 12
  end
  
  live_loop :gentle_melody do
    play choose([:G4, :A4]), attack: 3, release: 5, amp: 0.4
    sleep 9
  end
  
  live_loop :soft_chimes do
    sample :perc_bell, rate: 0.8, amp: 0.2
    sleep 18
  end
end