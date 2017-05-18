\version "2.19.49"

\header {
  title = "SIDRO MOJE DUŠE"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Heb 6,19"
  broj = "1"
}

\include "s02_frbo.ily"

\paper {
  \aFourL
}

note = \relative c' {
  \key c \major
  \time 4/4

  %one
  \markMojPoc
  c'4 h g e' |
  g4 f8 e d2 |
  c4 h8 c a2 |
  f'4 e d2 |
  \bar "||"
  
  %two
  \once \override Score.RehearsalMark.self-alignment-X = #-0.8
  \markMoj
  e,4 g c, d |
  e4.( d8) d4.
  \parenthesize
  g,8 |
  e'4 g a g |
  e4.( d8) d4. g,8 |
  e'4 g c, d |
  e4.( d8) d4.
  \parenthesize
  g,8 |
  e'4 g a g |
  e4.( d8) d4.
  \breathemoj g,16 g |
  \bar "||"
  
  %three
  \markMoj
  d'4.( c8) c2 |
  e8( d f4) e4.\(e8\) |
  f4 f e d8( c) |
  d4.( c8) c4.
  \breathemoj e16 g |
  \bar "||"
  
  %four
  \markMoj
  a8 e d( c~c4.) c8 |
  c8\( d\) e4 d4. e16 g |
  a8 e d( c~c4.) c8 |
  a'8\( g\) e4 d4. e16 g |
  a8 e d( c~c4.) c8 |
  c8\( d\) e4 d2 |
  f4 f e d8( c) |
  d4.( c8) c2 |
  \bar "|."
}

tekst = \lyricmode {
  \repeat unfold 15 { \skip1 }
  \set stanza = "1."
  Bo -- že ti si si -- dro, __ _ si -- dro mo -- je du -- še.
  Kad va -- lo -- vi me pla -- še __ _ i o -- lu -- ja pu -- še.
  Ti si si -- dro, si -- dro, _ si -- dro mo -- je __ du -- še.
  Ti si u -- vijek tu __ i dr __ _ -- žiš me,
  ti si u -- vijek tu __ i dr __ _ -- žiš me.
  Ti si u -- vijek tu __ i dr __ _ -- žiš me,
  si -- dro mo -- je __ du -- še.
}

tekstDva = \lyricmode {
  \repeat unfold 15 { \skip1 }
  \set stanza = "2."
  Ti si svje -- ti -- o -- nik, i svje -- tlo mo -- je du -- še. __ _
  Kad se ne -- bo smra -- či, i vje -- tar kad za -- pu -- še.
  Ti si svje -- tlo, svje -- tlo i svje -- ti -- o -- nik du -- še.
  Ti si u -- vijek tu __ po -- ka -- zu -- ješ put,
  ti si u -- vijek tu __ po -- ka -- zu -- ješ put.
  Ti si u -- vijek tu __ po -- ka -- zu -- ješ put,
  svje -- ti -- o -- nik du -- še.
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  %zero
  a2:m f |
  c2/e g/h |
  a2:m f |
  d4:m f g2 |
  \break
  %one
  c4 c/e f g |
  f2 g |
  c4 c/e f g |
  a2:m g4:sus4 g |
  c4 c/e f g |
  f2 g |
  c4 c/e f g |
  a2:m g4.:sus4 g8 |
  %two
  d2:m7 a:m |
  g4/d g/h c2 |
  f2 a:m |
  g2 c |
  %three
  a2:m f |
  c2 g |
  a2:m f |
  c2/e g/h |
  a2:m f |
  c2 g |
  d2:m7 a:m |
  g2 c |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \new Staff { \repeat unfold 24 {S1} }
    %    \addlyrics { \tekstTri }
  >>
  \layout {}
}

