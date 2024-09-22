# asphalt
use_bpm 90

live_loop :pulse do
  use_synth :fm
  play :c2, sustain: 2, release: 1.5, amp: 0.4
  sleep 2
  play :f2, sustain: 2, release: 1.5, amp: 0.4
  sleep 2
end
 
live_loop :melodic_riff do
  sync :pulse
  use_synth :sine
  with_fx :echo, phase: 0.5, decay: 3 do
    play_pattern_timed [:c3, :e3, :f3, :g3], [1, 0.5, 1, 1], amp: 0.5
    sleep 4
    play_pattern_timed [:c3, :e3, :a3, :g3], [1, 0.5, 1, 1], amp: 0.5
  end
end

live_loop :light_percussion do
  sync :melodic_riff
  sample :elec_tick, amp: 0.3, rate: 0.8
  sleep 1
  sample :elec_blip, amp: 0.2, rate: 0.9
  sleep 1
end
