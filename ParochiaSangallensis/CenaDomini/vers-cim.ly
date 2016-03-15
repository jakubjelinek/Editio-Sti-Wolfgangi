\version "2.11.57"
\include "deutsch.ly"

\paper {
  indent = #0
  #(define fonts
    (make-pango-font-tree "Junicode"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \omit TimeSignature
  }
}

\score {
  <<
  \new Staff {
    \new Voice = "one" { \relative c' {
  \key g \major
  \cadenzaOn
  h'\breve c8 \parenthesize a \parenthesize a a4 \bar "|" h\breve g8 fis \slurDotted e ( fis ) g4 \bar "||"
}
}
}
    \new Lyrics \lyricsto "one" {
      \markup { { \with-color #red \italic 1. } "Čím odplatím                          " } \markup { \bold Hos- } po- di- nu,
      \once \override LyricText.self-alignment-X = #LEFT
      "za všechno             " \markup { \bold co } mi \markup { pro- ká- } zal?
  }
  >>
}
\header {
  tagline = ""
}
