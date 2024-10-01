use_bpm 55  

live_loop :low_bass do
  use_synth :sine
  with_fx :reverb, room: 0.6, mix: 0.4 do
    play :g2, attack: 3, release: 6, amp: 1.5  
    sleep 8
    play :d2, attack: 3, release: 6, amp: 1.5
    sleep 8
  end
end

live_loop :cinematic_drums, sync: :low_bass do
  sample :drum_heavy_kick, amp: 0.8
  sleep 2
  sample :drum_snare_soft, amp: 0.6, rate: 1 if one_in(3)  
  sleep 2
end

live_loop :dark_strings, sync: :low_bass do
  use_synth :blade
  with_fx :echo, phase: 0.6, decay: 6 do
    play :g4, attack: 3, sustain: 6, release: 8, cutoff: 70, amp: 0.7
    sleep 8
    play :d4, attack: 3, sustain: 6, release: 8, cutoff: 70, amp: 0.7
  end
end

live_loop :tension_drone, sync: :low_bass do
  use_synth :dark_ambience
  with_fx :flanger, phase: 0.7, depth: 4 do
    play :g3, attack: 6, sustain: 12, release: 10, cutoff: 60, amp: 0.5
    sleep 12
  end
end

live_loop :plucked_melody, sync: :low_bass do
  use_synth :pluck
  with_fx :reverb, room: 0.7, mix: 0.5 do
    play_pattern_timed [:g4, :d4, :f4, :c4], [3, 4, 3, 5], release: 2, amp: 1
    sleep 4
  end
end

live_loop :gritty_textures, sync: :low_bass do
  sample :elec_blip, rate: 0.6, amp: 0.3, pan: rrand(-1, 1) if one_in(4)
  sample :ambi_glass_rub, rate: 0.4, amp: 0.4, pan: rrand(-1, 1) if one_in(3)
  sleep 6
end
