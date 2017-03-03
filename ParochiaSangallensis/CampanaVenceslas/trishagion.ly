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
  title = "Trishagion"
%  title = "τρίςἅγιον"
%  composer = "T: 5. stol."
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
  \key as \major
}
choralMusic = \relative c'' {
  \key as \major
  \time 2/4
  as4 as g g as as b b \breathe as as des c b2 as \breathe c4 b as b as ( g ) f2 \bar "|."
}
czechWords = \lyricmode {
Sva- tý Bo- že, sva- tý Sil- ný, sva- tý Ne- smr- tel- ný, smi- luj se nad ná- mi!
}
\score {
  \new ChoirStaff <<
    \new Staff {
       \new Voice = "tenores" { \choralMusic }
    }
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWords
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
