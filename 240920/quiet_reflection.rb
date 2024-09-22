# quiet reflection

use_bpm 70

live_loop :soft_pads do
  use_synth :dark_ambience
  play (chord :d3, :minor7), release: 12, amp: 0.3
  sleep 8
  play (chord :g3, :minor7), release: 12, amp: 0.3
  sleep 8
end

live_loop :melodic_drifts do
  sync :soft_pads
  use_synth :zawa
  with_fx :reverb, room: 0.9 do
    play :a4, release: 4, amp: 0.4
    sleep 6
    play :d4, release: 4, amp: 0.4
    sleep 6
    play :f4, release: 6, amp: 0.4
    sleep 8
    play :a4, release: 6, amp: 0.4
    sleep 8
  end
end

live_loop :low_bass do
  sync :soft_pads
  use_synth :fm
  play :d2, release: 12, amp: 0.3
  sleep 16
  play :g2, release: 12, amp: 0.3
  sleep 16
end

live_loop :melodic_layer do
  sync :melodic_drifts
  use_synth :pluck
  with_fx :echo, phase: 0.5, decay: 2 do
    play_pattern_timed [:d4, :f4, :a4, :c5], [0.75, 0.5, 0.5, 1], amp: 0.5
    sleep 2
    play_pattern_timed [:d4, :a4, :f4], [1, 0.5, 0.75], amp: 0.5
  end
end

live_loop :percussive_rhythm do
  sync :low_bass
  sample :elec_tick, amp: 0.2, rate: 0.8
  sleep 1
  sample :elec_blip, amp: 0.3, rate: 0.9
  sleep 1
end
