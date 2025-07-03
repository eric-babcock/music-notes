\version "2.24.4"
\language english
\header {
  title = "Tambourine Man"
}

\paper {
  % Add space for instrument names
  indent = 0\mm
}

global = {
  \key g \major
  \time 4/4
}

%{
mandolin = \relative c' {
  \global
  % Music follows here.

}
%}

chordNames = \chordmode {
  \global
  % Chords follow here.
  c1 d:7 g c g c d:7 s c d:7 g c
  g c d:7 g s s c d:7 g c g c g
  c2 a:m d1:7 s c d:7 g c g c g
  c d:7 s s

}

melody = \relative c'' {
  \global
  % Music follows here.
  g'2 g4 fs8 e~| e4 d8 d~ d b4. |
  b8 b4 d8~ d4 b8 g~ | g4 r g8 a4. |
  b8 d4. d8 d4. | e4 d c b | a8 a4 a8~ a2 |
  r1 | g'2 g4 fs8 e~ | e4 d8 d~ d b4. |
  b8 b4 d8~ d4 b8 g~ | g4 r g8 a4. |
  b8 e4. d4 b | c8 b r4 a g| a2~ a8 b a4 |
  g2. r4 | r1 | r2 g'8 g4. \bar"||"
  g4 g8 g8~ g4 fs | e8 d4.~ d4 b | 
  b8 e4. d4 b g2. r4 | b8 e4 d8~ d b4. |
  g2 g4 a | b e d d | e d c8 b4 b8 | a2. r4 |
  r2 r4 g'4 | g8 g4 g8~ g fs4. | e8 d4 d8~ d4 b|
  b8 e4. d4 b | g2. a4 | b e d b | g2 g4 a
  | b e d d | e d c b |
  a8 a4.~ a2 | r1 \bar":|." r \bar"||"
  
}

verse = \lyricmode {
  % Lyrics follow here.
  Hey, Mis -- ter Tam -- bou -- rine __ Man,
  play a song __ for me. __ __ I'm not sleep -- y
  and there is no place I'm  go -- in' to. __ 
  Hey, Mis -- ter Tam -- bou -- rine __ Man,
  play a song __ for me. __ In the jin -- gle
  jan -- gle morn -- in', I'll come fol -- low --
  in' you. Though I know that eve -- nin's em --
  pire __ has re -- turned in -- to sand, van --
  ished from __ my hand, left me blind -- ly here
  to stand, but still not sleep -- ing. My wea --
  ri -- ness __ a -- maz -- es me, __ I'm  brand
  -- ed on my feet, I have no one to meet, and
  the an -- cient emp -- ty street's too dead
  for dream -- in'. __
}

%{mandolinPart = \new Staff \with {
  midiInstrument = "acoustic guitar (steel)"
  instrumentName = "Mandolin"
} \mandolin
%}

leadSheetPart = <<
  \new ChordNames \chordNames
  \new Staff { \melody }
  \addlyrics { \verse }
>>

\score {
  <<
    %\mandolinPart
    \leadSheetPart
  >>
  \layout { }
  \midi {
    \tempo 4=178
  }
}

\markup \column \string-lines
"Verse 2.
Take me on a trip upon your magic swirlin' ship.
My senses have been stripped, my hands can't feel to grip.
My toes too numb to step, wait only for my boot heels to be wanderin'.
I'm ready to go anywhere, I'm ready for to fade
Into my own parade, cast your dancing' spell my way.
I promise to go under it."

\markup \column \string-lines
"Verse 3.
Though you might hear laughin', spinnin', swingin' madly across the sun,
It's not aimed at anyone, it's just escapin' on the run.
And but for the sky, there are no fences facin',
And if you hear vague traces of skippin' reels of rhyme
To your tambourine in time, it's just a ragged clown behind.
I wouldn't pay it any mind; it's just a shadow you're seein' that he's chasin'.
"
\markup \column\string-lines
"Verse 4.
Then take me disappearin' through the smoke rings of my mind,
Down the foggy ruins of time, far past the frozen leaves,
The haunted, frightened trees out to the windy beach,
Yes, to dance beneath the diamond sky with one hand wavin' free,
Silhouetted by the sea, circled by the circus sands,
With all memory and fate driven deep beneath the waves.
Let me forget about today until tomorrow."