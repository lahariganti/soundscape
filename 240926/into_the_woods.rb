# Into the Woods

use_bpm 52

live_loop :bass_groove do
  use_synth :subpulse
  with_fx :reverb, room: 0.7, mix: 0.6 do
    play :e2, attack: 2, release: 6, amp: 2, cutoff: 80
    sleep 8
    play :g2, attack: 2, release: 6, amp: 2, cutoff: 80
    sleep 8
    play :d2, attack: 2, release: 6, amp: 2, cutoff: 80
    sleep 8
  end
end

live_loop :drum_beat, sync: :bass_groove do
  sample :bd_haus, amp: 1.0, lpf: 100
  sleep 2
  sample :drum_snare_soft, amp: 0.8, lpf: 90
  sleep 2
  sample :drum_cymbal_soft, amp: 0.4 if one_in(3)
end

live_loop :melodic_hook, sync: :bass_groove do
  use_synth :piano
  with_fx :reverb, room: 0.8 do
    play_pattern_timed [:e4, :g4, :b4], [2, 2, 4], release: 3, amp: 1.2
    sleep 4
    play_pattern_timed [:d4, :g4, :a4], [2, 2, 4], release: 3, amp: 1.3
    sleep 4
    play_pattern_timed [:e4, :g4, :b4, :c5], [2, 2, 2, 4], release: 3, amp: 1.4
  end
end

live_loop :supplementary_hook, sync: :melodic_hook do
  use_synth :pluck
  with_fx :echo, phase: 0.75, decay: 4 do
    play_pattern_timed [:g3, :b3, :e4], [2, 2, 4], release: 2, amp: 1, cutoff: rrand(85, 110)
    sleep 4
    play_pattern_timed [:g3, :d4, :a4], [2, 2, 4], release: 2, amp: 1.1, cutoff: rrand(85, 110)
  end
end

live_loop :guitar_riff, sync: :bass_groove do
  use_synth :pluck
  with_fx :echo, phase: 0.75, decay: 4 do
    play (ring :e3, :g3, :b3, :d4).choose, release: 2, amp: 0.9, cutoff: rrand(85, 110)
    sleep rrand(4, 6)
  end
end

live_loop :ambient_pad, sync: :bass_groove do
  use_synth :dark_ambience
  play :e4, attack: 6, sustain: 8, release: 8, cutoff: rrand(70, 100), amp: 0.4
  sleep 8
  play :g4, attack: 6, sustain: 8, release: 8, cutoff: rrand(70, 100), amp: 0.4
end

live_loop :rhythmic_click, sync: :bass_groove do
  sample :elec_tick, amp: 0.3, rate: 1.2 if one_in(3)
  sleep 1
end

live_loop :final_layer, sync: :bass_groove do
  use_synth :blade
  with_fx :reverb, room: 0.7, mix: 0.7 do
    play :e5, attack: 6, sustain: 8, release: 8, amp: 0.8
  end
  sleep 16
  use_synth :prophet
  play (chord :g4, :minor), attack: 6, sustain: 8, release: 8, amp: 0.6
  sleep 16
end
