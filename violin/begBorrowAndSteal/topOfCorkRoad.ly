\version "2.24.4"
\language english

\header {
  title = "Top of Cork Road"
}

\paper {
  % Add space for instrument names
  indent = 0\mm
}

global = {
  \key d \major
  \time 6/8
}

chordNames = \chords {
  \global
  s8 | d2. | d | g | a | d |
}

violin = \relative c'' {
  \global
  % Music follows here.
  \partial 8
  fs16 e | d8 a fs d fs a | d e d cs b a | d cs d e fs g | fs d fs e cs a| d a fs d fs a | 
}

\score {
  <<
  \chordNames
    \violin
  >>
  \layout { }
  \midi {
    \tempo 4=200
  }
}
