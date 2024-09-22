# Breathing Space

use_bpm 80


live_loop :master do
  sleep 1
end

live_loop :deep_pads, sync: :master do
  use_synth :dtri
  play (chord :A3, :minor), release: 16, amp: 0.4
  sleep 16
  play (chord :A2, :minor), release: 16, amp: 0.4
  sleep 16
end

live_loop :melody, sync: :master do
  use_synth :fm
  with_fx :ixi_techno, room: 1.0, mix: 0.6 do
    play :E4, release: 6, amp: 0.5
    sleep 8
    play :G4, release: 8, amp: 0.5
    sleep 4
    play :A4, release: 12, amp: 0.5
    sleep 12
    play :C4, release: 8, amp: 0.5
    sleep 10
  end
end

live_loop :subtle_rhythm, sync: :master do
  sample :bd_haus, amp: 0.2, rate: 0.8
  sleep 2
end

live_loop :sub_bass, sync: :master do
  use_synth :subpulse
  play :E1, release: 16, amp: 0.2
  sleep 16
  play :A1, release: 16, amp: 0.2
  sleep 16
end

live_loop :shimmer, sync: :master do
  use_synth :noise
  with_fx :slicer, phase: 0.25, mix: 0.3 do
    play :E5, release: 8, amp: 0.1
    sleep 16
    play :A5, release: 8, amp: 0.1
    sleep 16
  end
end
