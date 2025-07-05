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
  \key a \major
  \time 7/8
}


violin = \relative c'' {
  \global
    fs,4~ fs'8 e4~ fs | e8~ fs4 cs2 |
    d4~ cs8 b4~ d | cs2.. | fs,4 fs'8 e4~ fs
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