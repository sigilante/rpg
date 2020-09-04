!:
::  Tabletop role-playing game utilities
::  d100, 100-sided die rolls
::
:-  %say
|=  [[* eny=@uv *] [n=@ud ~] ~]
  :-  %noun
  =/  values  `(list @ud)`~
  =/  count  0
  =/  rng  ~(. og eny)
  |-  ^-  (list @ud)
    ?:  =(count n)  values
    =^  r  rng  (rads:rng 100)
  $(count +(count), values (weld values ~[(add r 1)]))
