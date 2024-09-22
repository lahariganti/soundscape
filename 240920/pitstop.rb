# Pitstop

use_bpm 75

live_loop :calm_pads do
  use_synth :blade
  play (chord :C4, :major7), release: 12, amp: 0.4
  sleep 12
  play (chord :G3, :major7), release: 12, amp: 0.4
  sleep 12
end

live_loop :melody, sync: :calm_pads do
  use_synth :piano
  with_fx :reverb, room: 0.9 do
    play :E4, release: 6, amp: 0.5
    sleep 8
    play :D4, release: 6, amp: 0.5
    sleep 8
    play :G4, release: 6, amp: 0.5
    sleep 6
    play :A4, release: 6, amp: 0.5
    sleep 8
  end
end

live_loop :soft_rhythm, sync: :calm_pads do
  sample :bd_haus, amp: 0.3, rate: 0.8
  sleep 4
end

live_loop :bass_transition, sync: :calm_pads do
  use_synth :fm
  play :C2, release: 10, amp: 0.2
  sleep 16
  play :G2, release: 10, amp: 0.2
  sleep 16
end

live_loop :build_up, sync: :calm_pads do
  sample :elec_tick, amp: 0.2, rate: 0.8
  sleep 1
  sample :elec_tick, amp: 0.2, rate: 0.9
  sleep 1
  sample :elec_tick, amp: 0.3, rate: 1.0
  sleep 2
end
