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
}

\header {
  title = "Děkovná píseň I."
  composer = "Martin Böhm 1608, úprava J. S. Bach"
  tagline = ""
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \omit TimeSignature
  }
}

global = {
  \key d \major
  \time 4/4
}
sopMusic = \relative c' {
  \key d \major
  \time 4/4
  \stemUp
  \partial 4
  d4 fis a a fis d e fis\fermata \breathe d
  a' a h cis d8 [ cis ] h4 a\fermata \breathe a
  fis a h a g fis e\fermata \breathe a
  fis8 [ g ] a4 g fis8 [ e ] d4 e d\fermata \bar "|."
}
altoMusic = \relative c' {
  \key d \major
  \time 4/4
  \stemDown
  \partial 4
  d4 d fis d a d cis d a
  fis' d g g a e e cis
  d d fis fis e d e d
  d fis g8 [ e ] d [ a ] a4 d8 [ cis ] d4 \bar "|."
}
czechWordsi = \lyricmode {
V_den o- slav v_chví- lích ra- dost- ných, kdy zpí- vat chce se a kdy smích se ne- se ja- ko von- ný dým, buď nej- prv chvá- _ len _ Hos- po- din.
}
czechWordsii = \lyricmode {
Když šle- há, bi- je, dr- tí nás a ží- há hně- vem svým v_ten čas, kdy z_na- dě- jí už ne- zbyl stín, buď zno- vu chvá- _ len _ Hos- po- din.
}
czechWordsiii = \lyricmode {
Křik, ná- si- lí a zá- pla- va když pus- tých slov se roz- lé- vá, kdy chva- lo- zpěv zní lid- ských vin, buď od nás chvá- _ len _ Hos- po- din.
}
czechWordsiv = \lyricmode {
Když lid- ské pý- chy pá- pě- ří už je- ho slo- vu ne- vě- ří a slou- ží stí- nům blá- ho- vým: Buď od nás chvá- _ len _ Hos- po- din.
}
czechWordsv = \lyricmode {
Vší prázd- no- tě slov na- vzdo- ry chce vyz- nat křes- ťan po- kor- ný svou ví- ru sli- bům žu- lo- vým: Buď po- vždy chvá- _ len _ Hos- po- din.
}
czechWordsvi = \lyricmode {
Chce o- pa- ko- vat Jo- bův vzdech v_svých ra- dos- tech a ú- zkos- tech: Buď Hos- po- din vždy po- chvá- len, jen je- mu slá- _ va, _ dík. A- men.
}
tenorMusic = \relative c' {
  \key d \major
  \time 4/4
  \stemUp
  \partial 4
  a4 a d a d a a a\fermata \breathe fis
  a d d e d d cis\fermata \breathe a
  a fis h h h h cis\fermata \breathe a
  a d d8 [ a ] fis [ g ] a4 a fis\fermata \bar "|."
}
bassMusic = \relative c {
  \key d \major
  \time 4/4
  \stemDown
  \partial 4
  fis4 d  d fis d fis a, d d
  d fis g e fis gis a a,
  d d dis dis e fis8 [ g ] a4 fis
  d c h8 [ cis d e ] fis16 [ g a8 ] a,4 d \bar "|."
}
\score {
  \new ChoirStaff <<
    \new Staff = women \with { printPartCombineTexts = ##f } {
       \partcombine
       \new Voice = "sopranos" { \sopMusic }
       \new Voice = "altos" { \altoMusic }
    }
    \new Staff = men \with { printPartCombineTexts = ##f } {
       \clef bass
       \partcombine
       \new Voice = "tenores" { \tenorMusic }
       \new Voice = "bassos" { \bassMusic }
    }
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWordsvi
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWordsv
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWordsiv
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWordsiii
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWordsii
    \new Lyrics \with { alignBelowContext = men } \lyricsto tenores \czechWordsi
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
