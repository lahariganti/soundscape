# Drifting Currents

use_bpm 70

with_fx :reverb, room: 0.7, mix: 0.5 do
  with_fx :echo, phase: 0.75, decay: 6 do
    
    live_loop :spacey_bass do
      use_synth :fm
      play choose([:E2, :D2, :A2]), release: 4, cutoff: 80, amp: 0.4
      sleep 4
    end
    
    live_loop :psychedelic_melody do
      use_synth :pluck
      play choose([:G3, :A3, :D4]), release: 3, attack: 0.3, cutoff: rrand(70, 100), amp: 0.35, pan: rrand(-0.5, 0.5)
      sleep 8
    end
    
    live_loop :ambient_swirl do
      use_synth :prophet
      play choose([:E4, :B4, :G4]), release: 6, attack: 1.5, cutoff: rrand(50, 90), amp: 0.3, pan: rrand(-1, 1)
      sleep 12
    end
    
    live_loop :soft_percussion do
      sample :perc_snap, amp: 0.2, rate: 1.2
      sleep 2
      sample :drum_cymbal_closed, amp: 0.2, rate: 0.8 if one_in(3)
      sleep 2
    end
    
    live_loop :shimmering_effects do
      sample :elec_blip2, rate: 0.6, amp: 0.15, pan: rrand(-0.8, 0.8) if one_in(5)
      sleep rrand(4, 8)
    end
  end
end
