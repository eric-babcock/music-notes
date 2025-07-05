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
  ( | a g) f ( e) d c d4 |
}

\score {
  <<
    \violin
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}