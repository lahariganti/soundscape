# Woodland Reverie

use_bpm 70

live_loop :low_bass do
  use_synth :fm
  with_fx :reverb, room: 0.6, mix: 0.5 do
    play :e2, attack: 2, release: 6, amp: 1.8
    sleep 8
    play :a2, attack: 2, release: 6, amp: 1.8
    sleep 8
  end
end

live_loop :psychedelic_drums, sync: :low_bass do
  sample :tabla_ke1, amp: 0.7, rate: 1.2
  sleep 0.5
  sample :tabla_na_o, amp: 0.8, rate: 1.2
  sleep 0.5
  sample :perc_snap, amp: 0.5, rate: 1.1 if one_in(4)
end

live_loop :plucked_guitar, sync: :low_bass do
  use_synth :pluck
  with_fx :echo, phase: 0.5, decay: 4 do
    play_pattern_timed [:e3, :a3, :g3, :b3], [1.5, 2, 2.5, 1], release: 3, amp: 1.3
    sleep 4
  end
end

live_loop :psychedelic_pad, sync: :low_bass do
  use_synth :hollow
  with_fx :flanger, phase: 0.6, depth: 3 do
    play :e4, attack: 4, sustain: 10, release: 8, cutoff: 90, amp: 0.7
    sleep 8
    play :a4, attack: 4, sustain: 10, release: 8, cutoff: 90, amp: 0.7
  end
end

live_loop :bell_lead, sync: :low_bass do
  use_synth :pretty_bell
  with_fx :reverb, room: 0.9 do
    play_pattern_timed [:e4, :g4, :a4, :d5], [2, 3, 2.5, 4], release: 4, amp: 1.4
  end
end

live_loop :textural_ambience, sync: :low_bass do
  sample :ambi_choir, rate: 0.5, amp: 0.3, pan: rrand(-1, 1) if one_in(3)
  sample :elec_blip, rate: 0.7, amp: 0.2, pan: rrand(-1, 1) if one_in(6)
  sleep 8
end

live_loop :energy_shift do
  sleep 32
  use_bpm 80
end
