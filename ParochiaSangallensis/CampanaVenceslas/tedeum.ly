\version "2.19.44"
\include "deutsch.ly"

#(set-default-paper-size "a4")

\paper {
  indent = #0
  #(define fonts
    (make-pango-font-tree "Junicode"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
  page-count = #1
}

\header {
  title = "Te Deum laudamus"
  composer = "T: sv. Ambrož († 397)"
  tagline = ""
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

\layout {
  indent = #0
}

global = {
  \key g \major
}
choralMusic = \relative c'' {
  \key g \major
  \time 3/4
  g2 g4 g ( fis ) g a ( g ) a h2 r4 h2 h4
  h ( c ) d d ( c ) h h a r4 \bar ":|." a ( h ) c c ( h ) a
  h2 c4 d2 r4 e2 e4 d ( c ) h d ( c ) a g2. \bar "|."
}
czechWordsi = \lyricmode {
\markup { { \with-color #red 1. } Bo- } že, chvá- lí- me te- be, Pa- ne, moc tvou ve- le- bí- me,
když se vše v_svě- tě mě- ní, ty sám jsi bez pro- mě- ny.
}
czechWordsii = \lyricmode {
kte- rou zná zem i ne- be, všem tvým skut- kům se di- ví- me;
}
\score {
  \new ChoirStaff <<
    \new Staff {
       \new Voice = "tenores" { \choralMusic }
    }
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWordsi
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWordsii
  >>
  \layout {
    \context {
       % a little smaller so lyrics
       % can be closer to the staff
       \Staff
       \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
    }
  }
}
