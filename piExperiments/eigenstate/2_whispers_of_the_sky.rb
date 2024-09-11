# Whispers of the Sky
use_bpm 50
use_synth :rodeo

with_fx :reverb, room: 0.8, damp: 0.7, mix: 0.6 do
  with_fx :echo, phase: 0.2, decay: 5 do
    
    live_loop :floating_chords do
      use_synth :pluck
      play chord(:E4, :minor7), attack: 4, release: 10, amp: 0.5
      sleep 10
    end
    
    live_loop :resonant_sitar do
      use_synth :pluck
      play choose([:E3, :G3, :A3]), attack: 1, release: 12, amp: 0.4, pan: rrand(-0.3, 0.3)
      sleep 12
    end
    
    live_loop :airy_melody do
      use_synth :sine
      play choose([:B4, :D5, :E5, :G5]), attack: 3, release: 5, amp: 0.3
      sleep 7.5
    end
    
    live_loop :soft_drum do
      sample :tabla_ke2, rate: 0.9, amp: 0.2
      sleep 8
    end
    
    live_loop :ambient_texture do
      use_synth :prophet
      play choose([:C5, :G4]), attack: 4, release: 6, amp: 0.2, cutoff: 100
      sleep 16
    end
  end
end
