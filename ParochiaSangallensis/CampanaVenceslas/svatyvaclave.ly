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
  title = "Svatý Václave"
  tagline = ""
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \omit TimeSignature
  }
}

\layout {
  indent = #0
}

global = {
  \key b \major
}
choralMusic = \relative c'' {
  \key b \major
  \time 256/4
  \autoBeamOff
  g4 ( a ) b c b ( a ) g2 \once\override Staff.BarLine #'bar-extent = #'(-1.5 . 1.5)  \bar "|"
  b4 b a d c b ( a ) g2 \bar "|"
  g4 es f2 \breathe g4 f g es f2 \breathe g4 f g es f2 \bar "|"
  es4 d c g' ( b ) a2 \bar "||"

  b4 b b a d c b ( a ) g2 \once\override Staff.BarLine #'bar-extent = #'(-1.5 . 1.5)  \bar "|"
  b4 b b a d c b ( a ) g2 \bar "|"
  g4 g f g es f2 \breathe g4 f g es f2 \breathe g4 f g es f2 \bar "|"
  es4 d c g' ( b ) a2 \bar "||"

  b4 b b a \bar "" d c b ( a ) g2 \once\override Staff.BarLine #'bar-extent = #'(-1.5 . 1.5)  \bar "|"
  b4 a d c b ( a ) g2 \bar "|"
  g4 f g ( es ) f2 \breathe g4 f g ( es ) f2 \breathe g4 f g es f2 \bar "|"
  es4 d c g' ( b ) a2 \bar "||"

  b4 b b a d c b ( a ) g2 \once\override Staff.BarLine #'bar-extent = #'(-1.5 . 1.5)  \bar "|"
  b4 b b a d c b ( a ) g2 \bar "|"
  g4 f g ( es ) f2 \breathe \bar "" g4 f g ( es ) f2 \breathe g4 f g es f2 \bar "|"
  es4 d c g' ( b ) a2 \bar "||"

  b4 b b a d c b ( a ) g2 \once\override Staff.BarLine #'bar-extent = #'(-1.5 . 1.5)  \bar "|"
  b4 b b a \bar "" d c b ( a ) g2 \bar "|"
  g4 f g ( es ) f2 \breathe g4 f g ( es ) f2 \breathe g4 f g ( es ) f2 \breathe g4 f g ( es ) f2 \bar "|"
  es4 d c g' ( b ) a2 \bar "||"

  b4 b b a d c b ( a ) g2 \once\override Staff.BarLine #'bar-extent = #'(-1.5 . 1.5)  \bar "|"
  b4 b b a d c b ( a ) g2 \bar "|"
  g4 f g ( es ) f2 \breathe g4 f g ( es ) f2 \breathe g4 f g es f2 \bar "|"
  es4 d c g' ( b ) a2 \bar "||"

  b4 b b a d c b ( a ) g2 \once\override Staff.BarLine #'bar-extent = #'(-1.5 . 1.5)  \bar "|"
  b4 b b a d c b ( a ) g2 \bar "|"
  g4 f g ( es ) f2 \breathe g4 f g es f2 \breathe g4 f g es f2 \breathe
  g4 f g es f2 \breathe g4 f g es f2 \breathe \bar "" g4 g g g f g es f2 \breathe
  g4 f g es f2 \breathe g4 f g es f2 \breathe g4 f g es f2 \bar "|"
  es4 d c g' ( b ) a2 \bar "||"

  b4 b b a d c b ( a ) g2 \once\override Staff.BarLine #'bar-extent = #'(-1.5 . 1.5)  \bar "|"
  b4 b b a d c b ( a ) g2 \bar "|"
  g4 f g es f2 \breathe g4 f g es f2 \breathe g4 g f g es f2 \bar "|"
  es4 d c g' ( b ) a2 \bar "||"
}
czechWords = \lyricmode {
Sva- tý Vá- cla- ve, vé- vo- do čes- ké ze- mě, kní- že náš, pros za nás Bo- ha, sva- té- ho Du- cha! Kris- te, e- lei- son.
Ty jsi dě- dic čes- ké ze- mě, roz- po- meň se na své plé- mě, ne- dej za- hy- nou- ti nám ni bu- dou- cím, sva- tý Vá- cla- ve! Kris- te, e- lei- son.
Po- mo- ci my tvé žá- dá- me, smi- luj se nad ná- mi, u- těš smut- né, za- žeň vše zlé, sva- tý Vá- cla- ve! Kris- te, e- lei- son.
Ne- bes- ké jest dvor- stvo krá- sné, bla- ze to- mu, kdo tam doj- de, v_ži- vot věč- ný, o- heň jas- ný sva- té- ho Du- cha. Kris- te, e- lei- son.
Ma- ri- a, Mat- ko žá- dou- cí, tys Krá- lov- na vše- mo- hou- cí, pro- siž za nás, za křes- ťa- ny, své- ho Sy- na, Hos- po- di- na! Kris- te, e- lei- son.
An- dě- lé sva- tí, ne- beš- tí, rač- te nás k_so- bě při- vés- ti, tam, kde chvá- la ne- pře- stá- vá věč- né- ho Bo- ha. Kris- te, e- lei- son.
Všich- ni sva- tí, za nás pros- te, za- hy- nou- ti nám ne- dej- te, sva- tý Ví- te, sva- tý Nor- ber- te, sva- tý Zik- mun- de, sva- tý Pro- ko- pe, sva- tý Voj- tě- še, sva- tý Je- ne Ne- po- muc- ký, sva- tá Lud- mi- lo, sva- tá A- než- ko, sva- tý Vác- la- ve! Kris- te, e- lei- son.
Bo- hu Ot- ci chvá- lu vzdej- me, sva- tým kří- žem se žeh- nej- me: Ve jmé- nu Ot- ce i Sy- na je- ho i Du- cha sva- té- ho. Kris- te, e- lei- son. 
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
