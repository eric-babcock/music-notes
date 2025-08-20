\version "2.24.4"
\language english

\header {
  title = "Lonesome Fiddle Blues"
}

\paper {
  % Add space for instrument names
  indent = 0\mm
}

global = {
  \key d \aeolian
  \time 4/4
}

% add chords
chordNames = \chords {
  \global
  s8 | g4. c4. |g4. c4. |g4. c4. | a4.:m d4. |g4. c4. |
  g4. c4. | g4. d4. | g2. g2. | g2.| g4. e4.:m | c4. d4.| g4. c4. |g4.c4.|g4.d4.| g2.|

}

chordNames = \chords {
  \global
  d1:m s c s d:m s s a2 d:m d1:m
  s c s d:m s s a2 d:m g1 s d s e
  s
}

violin = \relative c'' {
  \global
  d,4 d8 e f ( e f) g | a ( g f e d)
  c ( a g) | c ( b c) e ( d c a c) |
  g' ( fs f e d) c ( a g) | d'4 d8
  ( e f e) f g | a ( g) f ( e d) c
  ( a c) | f ( g) a d f ( e) d ( c |
  a g) f ( e d4) d \bar"||" d d8 e f
  ( e) d d | a' e4. ( d8 c a g) | c
  ( bf c) e ( d c a g) | g' ( fs f e
  d) c ( bf g) | d'4 d8 ( e f e) f g
  ( | a g) f ( e) d c d4 | \break
  g'8 (f e) d  f (e) d (c | a) g (f
  d) c (d) d4 \bar "||" \key d \major
  g,8 (b) d (fs g a b) d | g (fs g a) b (a g e)
  \break fs (f fs b a fs) e d (| b cs) d
  b c (b a fs | e fs gs e fs gs a fs |
  g a b b a b cs b \break
}

\score {
  <<
    \chordNames
    \violin
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}