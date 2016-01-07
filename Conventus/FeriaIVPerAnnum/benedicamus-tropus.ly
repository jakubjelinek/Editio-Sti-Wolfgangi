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
  line-width = #180
  \context {
    \Score
    \omit BarNumber
    \omit TimeSignature
  }
}

\score {
  <<
  \new ChoirStaff <<
  \new Staff = "one" <<
    \new Voice = "one" { \relative c' {
  \clef "treble_8"
  \key c \major
  \cadenzaOn
  d8 [ d c ] d4 h8 a [ f e ] d4 f8 g4. a4. c8 [ h g ] h4 c8 d4. \bar "|"
  a4. c4. g4. a4. h4. c4. d4. c8 [ h a ] h4 c8 d2. \bar "||"
}
}
  >>
    \new Lyrics \lyricsto "one" {
      Ca- _ _ _ _ tho- _ _ li- _ có- rum cón- _ _ ci- _ o sum- mo sum- mo sum- mo cum gáu- _ _ di- _ o.
  }
    \new Lyrics \lyricsto "one" {
      In _ _ _ _ hoc _ _ sac- _ ro sol- lém- _ _ ni- _ o sol- vat sol- vat sol- vat lau- des _ _ De- _ o.
  }
    \new Lyrics \lyricsto "one" {
      Pu- _ _ _ _ ro _ _ cor- _ de et á- _ _ ni- _ mo be- ne be- ne- di- cá- mus Dó- _ _ mi- _ no.
  }
    \new Lyrics \lyricsto "one" {
      Lau- _ _ _ _ di- _ _ flu- _ as at- que _ _ pi- _ as De- o De- o di- cá- mus grá- _ _ ti- _ as.
  }
  \new Staff = "two" <<
    \new Voice = "two" { \relative c {
  \clef "treble_8"
  \key c \major
  \cadenzaOn
  d2. d4. d4. c4. d4. f4. e4. d4. \bar "|"
  a'4. f4. g4. d4. e4. c4. d4. f4. e4. d2. \bar "||"
}
}
  >>
>>
  >>
}
\header {
  tagline = ""
}
