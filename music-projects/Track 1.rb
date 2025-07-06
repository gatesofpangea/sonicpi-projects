use_bpm 90

kick = :bd_tek
snare = :sn_dolf
hihat = :drum_cymbal_closed
bass_note = :e1

live_loop :drums do
  sample kick, amp: 2
  sleep 0.5
  sample hihat, amp: 0.5
  sleep 0.5
  sample snare, amp: 1.5
  sleep 0.5
  sample hihat, amp: 0.5
  sleep 0.5
  
  sample kick, amp: 2
  sleep 0.25
  sample hihat, amp: 0.5
  sleep 0.25
  sleep 0.25
  sample kick, amp: 1.5
  sleep 0.25
  sample snare, amp: 1.5
  sleep 0.5
  sample hihat, amp: 0.5
  sleep 0.5
end

live_loop :bass, sync: :drums do
  use_synth :fm
  play bass_note, release: 0.5, amp: 1
  sleep 1
  play bass_note + 2, release: 0.5, amp: 0.8
  sleep 0.5
  play bass_note, release: 0.5, amp: 1
  sleep 1.5
end
