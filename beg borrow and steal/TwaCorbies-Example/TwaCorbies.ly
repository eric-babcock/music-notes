\version "2.16.2"

\include "lilypond-book-preamble.ly"

voice = <<
    \relative c' {
        \tempo "con affetto"
        \clef bass
        \key e \minor
        \time 3/4

        a a b | c a a | g a2 |
        a4 a b | c2 ~ c8 a8 | a8 g a2 |
        \bar "|."
    }
    \addlyrics{
        As I was wal -- king all a -- lane
        I heard twa cor -- bies make a mane.
    }
>>

\score {
    <<
        \new Staff = "voice" {
            \voice
        }
    >>
    \layout { }
    \midi {
        \context {
            \Score
            tempoWholesPerMinute = #(ly:make-moment 90 4)
        }
    }
}
