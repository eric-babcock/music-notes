
\version "2.22.2"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Blackthorn Stick"
  subtitle = "hoowa"
}
<<
\chords {
   g8 c12 g c g
}
\relative {
  \key g \major
  \time 6/8
  \partial 16.
  d8''
  g[ f g] e[ g e]
  d[ b g] a[ g e]
  d[ g g] f[ g a]
  b[ g b] a4 d8
  g[ f g] a[ g e]
  \bar""\break
  d[ b g] a[ g e]
  d[ g g] f[ g a]
  b[ g g] g4
  \bar ":|."
  \partial 16.
  d8'
  \repeat unfold 2{e[ d d] g[ d d]}
  \break \bar ""
  e[ d d] g[ f g]
  e[ d b] a4 d8
  g[ f g] a[ g e]
  d[ b g] a[ g e]
  d[ g g] f[ g a]
  b[ g g] g4\bar ":|."
}
>>
