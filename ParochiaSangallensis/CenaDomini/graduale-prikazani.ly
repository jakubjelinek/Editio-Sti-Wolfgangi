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
  line-width = #150
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
  \key b \major
  \cadenzaOn
  a'8 d, es f b a g f [ ( g ] ) g4 \breathe a8 f g a \bar "" \break
  b a g a b g g4 \breathe a8 g d'4 b8 c b a4 g \bar "||"
}
}
}
    \new Lyrics \lyricsto "one" {
      Při- ká- zá- ní no- vé vám dá- vám, a- bys- te se mi- lo- va- li na- vzá- jem, ja- ko já jsem mi- lo- val vás.
  }
  >>
}
\header {
  tagline = ""
}
