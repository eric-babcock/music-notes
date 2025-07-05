\version "2.24.4"
\language english

\header {
  title = "Makedonske Devojce"
}

\paper {
  % Add space for instrument names
  indent = 0\mm
}

global = {
  \key g \major
  \time 7/8
}


violin = \relative c'' {
  \global
  e,4~ e'8 d4~ e d8~ e4 b2 c4~ b8 a4~ c
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