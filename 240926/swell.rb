use_bpm 124

live_loop :piano_arpeggio do
  use_synth :piano
  with_fx :reverb, room: 0.9, mix: 0.6 do
    play_pattern_timed [:bb4, :d5, :f5], [1.5], release: 2, amp: 1.1
    sleep 1.5
    play_pattern_timed [:g4, :c5, :e5], [1.5], release: 2, amp: 1.1
    sleep 1.5
  end
end

live_loop :higher_piano_melody, sync: :piano_arpeggio do
  use_synth :piano
  sleep 8 
  with_fx :reverb, room: 0.8 do
    play_pattern_timed [:f5, :bb5, :d6], [1.5], release: 3, amp: 1.2
    sleep 1.5
    play_pattern_timed [:g5, :c6, :e6], [1.5], release: 3, amp: 1.2
    sleep 1.5
  end
end

live_loop :intentional_bass, sync: :piano_arpeggio do
  use_synth :fm
  with_fx :reverb, room: 0.8 do
    play :bb2, release: 6, amp: 0.9
    sleep 6
    play :g2, release: 6, amp: 0.9
    sleep 6
  end
end

live_loop :steady_pulse, sync: :piano_arpeggio do
  sample :bd_haus, amp: 0.5, rate: 0.7
  sleep 3
end

live_loop :ambient_pads, sync: :piano_arpeggio do
  use_synth :hollow
  with_fx :flanger, phase: 0.5, depth: 2 do
    play :bb3, attack: 6, sustain: 10, release: 10, amp: 0.5
    sleep 10
    play :g3, attack: 6, sustain: 10, release: 10, amp: 0.5
  end
end

live_loop :harmonic_rise, sync: :piano_arpeggio do
  sleep 16
  use_synth :hollow
  with_fx :reverb, room: 0.8 do
    play [:bb4, :d5], attack: 3, sustain: 6, release: 8, amp: 0.6
    sleep 8
    play [:g4, :c5], attack: 3, sustain: 6, release: 8, amp: 0.6
    sleep 8
  end
end

live_loop :rising_intensity, sync: :piano_arpeggio do
  sleep 32 
  use_synth :blade
  with_fx :echo, phase: 0.5, decay: 6 do
    play :bb5, release: 4, amp: 0.8, cutoff: rrand(90, 120)
  end
  sleep 8
end

# Adding intentional percussion for a more energized feel
live_loop :drum_intensity, sync: :piano_arpeggio do
  sleep 48  # Allow the track to build before adding this intensity
  sample :drum_cymbal_open, amp: 0.6, rate: 0.8 if one_in(4)
  sleep 4
end
