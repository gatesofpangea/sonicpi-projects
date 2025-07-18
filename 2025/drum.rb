use_debug false
use_bpm 120

live_loop :drums do
  #               1 e & a  2 e & a  3 e & a  4 e & a
  cymbals = bools(0,0,0,0, 0,1,0,1, 0,0,0,0, 0,1,0,0)
  hard    = bools(0,0,0,0, 1,0,0,0, 0,0,0,0, 1,0,0,0)
  soft    = bools(0,0,0,0, 0,0,0,1, 0,1,0,1, 0,0,0,1)
  kick    = bools(1,0,1,0, 0,0,0,0, 0,0,1,0, 0,1,0,0)
  with_fx :reverb, room: 0.4, damp: 0.1, amp: 1.5 do
    16.times do
      tick
      if cymbals.look then
        sample :drum_cymbal_open, attack: 0.01, sustain: 0.2, release: 0.02, amp: 0.3
      else
        sample :drum_cymbal_closed, amp: 0.5
      end
      sample :drum_snare_hard, on: hard.look
      sample :drum_snare_soft, on: soft.look
      sample :drum_heavy_kick, on: kick.look
      sleep 0.25
    end
  end
end