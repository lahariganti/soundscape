use_bpm 120

live_loop :rhythm_pulse do
  use_synth :fm
  play :e2, sustain: 1, release: 0.8, amp: 0.5
  sleep 1
  play :g2, sustain: 1, release: 0.8, amp: 0.5
  sleep 1
  play :a2, sustain: 1, release: 0.8, amp: 0.5
  sleep 1
end

live_loop :melodic_loop do
  sync :rhythm_pulse
  use_synth :pluck
  with_fx :echo, phase: 0.5, decay: 2 do
    play_pattern_timed [:e3, :g3, :a3, :c4], [0.5, 0.25, 0.5, 0.75], amp: 0.6
    sleep 1
    # Added variation to take the melody forward
    play_pattern_timed [:e3, :d4, :g4, :b3], [0.5, 0.5, 0.25, 0.75], amp: 0.6
    sleep 1
  end
end

live_loop :high_melody do
  sync :melodic_loop
  use_synth :hollow
  with_fx :reverb, room: 0.8 do
    play :e4, sustain: 2, amp: 0.4
    sleep 2
    play :a4, sustain: 2, amp: 0.4
    sleep 2
    # Added progression to the melody
    play :g4, sustain: 2, amp: 0.4
    sleep 2
    play :c5, sustain: 2, amp: 0.4
    sleep 2
  end
end

live_loop :percussive_accent do
  sync :melodic_loop
  sample :elec_tick, amp: 0.2, rate: 0.8
  sleep 0.5
  sample :elec_blip, amp: 0.3, rate: 0.8
  sleep 0.5
end
