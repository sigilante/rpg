!:
::  Tabletop role-playing game utilities
::  d4, 4-sided die rolls
::
:-  %say
|=  [[* eny=@uv *] [n=@ud ~] ~]
  :-  %noun
  =/  values  `(list @ud)`~
  =/  count  0
  =/  rng  ~(. og eny)
  |-  ^-  (list @ud)
    ?:  =(count n)  values
    =^  r  rng  (rads:rng 4)
  $(count +(count), values (weld values ~[(add r 1)]))
