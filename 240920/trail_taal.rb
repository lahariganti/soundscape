use_bpm 160

live_loop :drone do
  use_synth :sine
  with_fx :echo, room: 1 do
    play :a3, sustain: 16, release: 4, amp: 0.4
    sleep 8
    play :e3, sustain: 16, release: 4, amp: 0.4
    sleep 8
  end
end

live_loop :tala_rhythm do
  sync :drone
  with_fx :reverb, room: 0.9 do
    sample :tabla_na, amp: 0.5
    sleep 0.5
    sample :tabla_ghe1, amp: 0.6
    sleep 0.25
    sample :tabla_na_o, amp: 0.5
    sleep 0.25
    sample :tabla_ghe2, amp: 0.5
    sleep 0.5
    
    sample :tabla_te2, amp: 0.6
    sleep 0.5
    sample :tabla_tun2, amp: 0.6
    sleep 0.25
    sample :tabla_ghe3, amp: 0.5
    sleep 0.5
    sample :tabla_te_ne, amp: 0.6
    sleep 0.25
  end
end

live_loop :raga_melody do
  sync :tala_rhythm
  use_synth :pluck
  with_fx :reverb, room: 0.9 do
    play_pattern_timed [:a4, :c5, :e5, :g5, :a5], [0.5, 0.25, 0.25, 0.5, 0.25], amp: 0.6
    sleep 1
    play_pattern_timed [:g5, :e5, :c5, :a4], [0.25, 0.25, 0.5, 0.5], amp: 0.6
    sleep 1
  end
end

live_loop :accent_rhythms do
  sync :raga_melody
  sample :tabla_tun2, amp: 0.5
  sleep 0.5
  sample :tabla_tun1, amp: 0.5
  sleep 0.25
end
