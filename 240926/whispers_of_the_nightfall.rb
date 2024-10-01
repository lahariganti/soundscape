use_bpm 60

live_loop :soft_pads do
  use_synth :hollow
  with_fx :reverb, room: 0.9, mix: 0.7 do
    play :e3, attack: 4, sustain: 8, release: 10, amp: 0.4
    sleep 8
    play :d3, attack: 4, sustain: 8, release: 10, amp: 0.4
    sleep 8
  end
end

live_loop :low_bass, sync: :soft_pads do
  use_synth :fm
  play :e2, release: 8, amp: 0.6
  sleep 8
  play :d2, release: 8, amp: 0.6
  sleep 8
end

live_loop :gentle_chimes, sync: :soft_pads do
  sample :perc_bell, rate: 0.6, amp: 0.3, pan: rrand(-0.5, 0.5)
  sleep 8
  sample :perc_bell, rate: 0.7, amp: 0.3, pan: rrand(-0.5, 0.5)
  sleep 8
end

live_loop :subtle_perc, sync: :soft_pads do
  sample :bd_haus, amp: 0.4
  sleep 4
end

live_loop :final_melody, sync: :soft_pads do
  use_synth :piano
  with_fx :reverb, room: 0.9 do
    play_pattern_timed [:e4, :g4, :a4], [4, 4, 8], amp: 0.5
    sleep 8
    play_pattern_timed [:d4, :f4, :g4], [4, 4, 8], amp: 0.5
  end
end

live_loop :fade_to_black do
  sleep 64
  with_fx :lpf, cutoff: rrand(50, 80) do
    sample :ambi_choir, rate: 0.4, amp: 0.3
  end
  sleep 8
end


live_loop :throat_singing do
  use_synth :growl
  with_fx :reverb, room: 0.9, mix: 0.6 do
    play :e2, release: 6, amp: 0.8
    sleep 6
    play :d2, release: 6, amp: 0.8
    sleep 6
  end
end

live_loop :low_chants, sync: :throat_singing do
  use_synth :dark_ambience
  with_fx :flanger, phase: 0.6, depth: 5 do
    play :g2, attack: 4, sustain: 6, release: 8, amp: 0.5
    sleep 8
    play :a2, attack: 4, sustain: 6, release: 8, amp: 0.5
  end
end

live_loop :modulated_drones, sync: :throat_singing do
  use_synth :mod_sine
  with_fx :slicer, phase: 0.4, wave: 0, amp: 0.7 do
    play :e3, release: 10, cutoff: 70
    sleep 10
    play :d3, release: 10, cutoff: 70
    sleep 10
  end
end

live_loop :deep_groans, sync: :throat_singing do
  use_synth :sound_in
  with_fx :distortion, distort: 0.3 do
    play :e1, release: 12, amp: 0.8
    sleep 12
    play :d1, release: 12, amp: 0.8
  end
end

live_loop :percussive_ritual do
  sample :bd_haus, amp: 0.6, rate: 0.8
  sleep 4
end


