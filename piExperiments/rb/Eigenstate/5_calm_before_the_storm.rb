# Calm before the storm

use_bpm 80
use_synth :tb303

with_fx :reverb, room: 0.7, mix: 0.5 do
  with_fx :echo, phase: 0.5, decay: 6 do
    live_loop :bass_groove do
      use_synth :fm
      play choose([:D2, :G2, :F2]), attack: 0.5, release: 3, cutoff: 80, amp: 0.6
      sleep 4
    end
    
    live_loop :lead_guitar_vibe do
      use_synth :pluck
      play choose([:A4, :G4, :B4]), attack: 0.1, release: 2, amp: 0.4, pan: rrand(-0.5, 0.5)
      sleep 6
    end
    
    live_loop :percussive_beat do
      sample :drum_heavy_kick, amp: 0.5
      sleep 0.5
      sample :drum_cymbal_closed, amp: 0.3, rate: 1.5
      sleep 0.5
    end
    
    live_loop :shakers_and_snaps do
      sample :perc_snap, amp: 0.4, rate: 1
      sleep 2
      sample :perc_shaker, amp: 0.2, rate: 1.3
      sleep 1
    end
    
    live_loop :spacey_lead do
      use_synth :mod_sine
      play choose([:C5, :E5, :G5]), attack: 1, release: 4, amp: 0.3
      sleep 8
    end
  end
end
