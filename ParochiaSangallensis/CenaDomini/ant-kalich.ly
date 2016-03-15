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
  g'8 h a g fis ( [ e ] ) d4 e8 c d e fis g a h a g4 \bar "|."
}
}
}
    \new Lyrics \lyricsto "one" {
      Ka- lich po- že- hná- ní je spo- le- čen- stvím kr- ve Kris- to- vy.
  }
  >>
}
\header {
  tagline = ""
}
