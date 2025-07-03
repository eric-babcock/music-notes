\version "2.24.0"  % necessary for upgrading to future LilyPond versions.
\language english


#(ly:set-option 'eps-box-padding 3.000000)

\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  %% images with a little space on the right
  %line-width = #(- line-width (* mm  3.000000) (* mm 1))
  %line-width = 160\mm - 2.0 * 10.16\mm
  %% offset the left padding, also add 1mm as lilypond creates cropped
  %% images with a little space on the right
  %line-width = #(- line-width (* mm  3.000000) (* mm 1))
}
\header{
  title = "Blackthorn Stick"
  %subtitle = "hoowa"
}
\layout{

}
<<
  \chords {
    s8 | g4. c4. |g4. c4. |g4. c4. | a4.:m d4. |g4. c4. |
    g4. c4. | g4. d4. | g2. g2. | g2.| g4. e4.:m | c4. d4.| g4. c4. |g4.c4.|g4.d4.| g2.|
  }
  \relative {
    \key g \major
    \time 6/8
    \partial 8
    d''8 |
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
>>