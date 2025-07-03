\version "2.24.4"  % necessary for upgrading to future LilyPond versions.
\language english




\header{
  title = "Blackthorn Stick"
}
\paper {
  indent = 0\mm
}

global = {
  \key g \major
  \time 6/8
}

chordNames = \chords {
  \global
  s8 | g4. c4. |g4. c4. |g4. c4. | a4.:m d4. |g4. c4. |
  g4. c4. | g4. d4. | g2. g2. | g2.| g4. e4.:m | c4. d4.| g4. c4. |g4.c4.|g4.d4.| g2.|

}

violin = \relative c'' {
  \global
  \partial 8
    d8 |
    g8 fs g e g e |
    d b g a g e |
    d g g fs g a |
    b g b a4 d8 |
    g fs g a g e |
    \break
    d b g a g e |
    d g g fs g a |
    b g g g4
    \bar ":|."
    \partial 8
    d'8
    \repeat unfold 2{e d d g d d |}
    \break 
    e d d g fs g |
    e d b a4 d8 |
    g fs g a g e |
    d b g a g e |
    d g g fs g a |
    b g g g4\bar ":|."
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

