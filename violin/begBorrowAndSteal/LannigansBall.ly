\version "2.24.4"
\language english

\include "lilypond-book-preamble.ly"


\header {
  title = "Lannigan's Ball"
}

\paper {
  % Add space for instrument names
  indent = 0\mm
}

global = {
  \key g \major
  \time 6/8
}

chordNames = \chords {
  \global
  s8 | e2.:m | e:m | d | d | e:m |
}

violin = \relative c'' {
  \global
  % Music follows here.
  \partial 8
  b8 | e, d e g4a8 | b4 a8 b c d | d, e d fs4 a8 | a b a a fs d | e d e g4 a8 |
  
}

\score {
  <<
  \chordNames
    \violin
  >>
  \layout { }
  \midi {
    \tempo 4=165
  }
}
