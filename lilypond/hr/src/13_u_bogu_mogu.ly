\version "2.19.49"
\include "s02_frbo.ily"

\header {
  title = "U BOGU MOGU"
  titlex = "Sidro"
  composer = "Dražen Radman"
  style = "Frank Bosch"
  broj = "13"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Tekst: Dražen Radman; Glazba: Frank Bosch } }
}

\paper {
  \aFourL
}

note = \relative c' {
  \key e \major
  \time 4/4
  
  %one
  \partial 8*2
  cis8 e |
  \markMoj
  \once \override Score.RehearsalMark.Y-offset = #4.1
  e8 e e e fis( e) dis cis ~ |
  cis2 r4 e8 fis |
  gis4 gis h8 h a a( |
  gis8) gis ~ gis2 \parenthesize cis,8 dis |
  \phrasingSlurDashed
  e8\( e\) e fis ~ fis fis e dis |
  cis2. r8 dis8 |
  e8 e e e dis\( dis\) e dis( |
  \phrasingSlurSolid
  cis8) cis ~ cis2 \breathemoj cis8 dis |
  
  %two
  \markMoj
  e4 dis8 e fis4 e8 dis( |
  cis8) cis ~ cis2 e8 gis |
  a8 a a a gis4 gis8 fis ~ |
  fis2 r8 cis8 cis dis |
  e4 e fis e8 dis( |
  cis8) cis ~ cis2 fis8 gis |
  a8 a a a gis8 gis gis fis ~ |
  fis2 r4 r8 \breathemoj cis8 |
  
  %three
  \markMoj
  \repeat volta 2 {
    e2 dis |
    dis8( cis) cis2 r8 cis8 |
    a'2 gis | 
    gis8( fis) fis2 r8 e8 |
    cis'4( h ~ h) a8 a( |
    gis8) gis ~ gis2 r8 e8 |
    fis2 dis |
  }
  \alternative{
    {dis8( cis) cis2 cis8 dis |}
    {dis8( cis) cis2. |}
  }
  \bar "|."
  
}

tekst = \lyricmode {
  \set stanza = "1."
  I -- ma da -- na kad sam tu -- žan, ljut __
  jer je ne -- tko ve -- ći i bo -- lji; __
  "" jer ne -- prav -- da do -- đe mi na put; __
  a sla -- bi su mi -- ši -- _ ći mo -- ji. __

  Za -- to ja u svom Bo -- gu mo -- gu __
  pri -- znat sla -- bost, tu -- gu, strah i grijeh! __
  U mo -- ju tad on pra -- znu tor -- bu __
  sta -- vlja o -- prost, sna -- gu, po -- kret i riječ! __

  U Bo -- gu mo -- gu, u Bo -- gu mo -- gu, u Bo -- gu mo -- gu, u Bo -- gu mo -- gu.
  I -- ma
  mo -- gu.
}

tekstDva = \lyricmode {
  \set stanza = "2."
  (I -- ma) da -- na kad ne slu -- šam glas, __
  a -- li Bog ne že -- li me kri -- vit. __
  Sa -- mo že -- _ li da __ o -- sta -- vim trag __
  "" dra -- go -- cjen na nje -- go -- voj nji -- vi! __
}


akordi = \chordmode {
  \skip 8*2
  cis2:m fis:m | cis1:m | e2 h | e1 |
  cis2:m fis:m | cis1:m | cis2:m gis:7 | cis1:m |
  cis2:m fis:m | cis1:m | fis2:m cis:m | h1 | cis2:m fis2:m | cis1:m |
  fis2:m cis2:m | h1 |
  
  cis2:m gis:7 | cis1:m | fis2:m cis:m | h1 |
  a1 | cis:m | gis:7 | cis:m | \set chordChanges = ##f cis:m |
  
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
    %\addlyrics { \tekstTri }
    %\addlyrics { \tekstCetiri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 8 = 174 }
}

\markup {
  \vspace #1.5
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [2] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic { bridge } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold {3 \italic \teeny { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 1 \teeny \italic { verse } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic { bridge } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus x2 } } \teeny \italic {(sec. volta)} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { \teeny \italic { outro [8] } } }
    }
  }
}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.19.59  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49
%}
