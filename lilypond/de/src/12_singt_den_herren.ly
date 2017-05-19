\version "2.19.49"

\header {
  title = "SINGT DEM HERRN"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Psalm 96,1–3.10"
  broj = "12"
}

\include "s02_frbo.ily"
\include "de_footer.ily"

\paper {
  \aFourL
}

note = \relative c''{
  \key d \major
  \time 6/8
  \markMojPoc
  \once \override Score.RehearsalMark.X-offset = #7.3
  a8 ~ a16 h ~ h8 a4. |
  e8 e fis fis4. |
  g8 ~ g16 a ~ a8 g fis e |
  e4. r4. |
  a8 ~ a16 h ~ h8 a4 a8 |
  g8 g16 g ~ g8 fis8 e ~ e16 d |
  g8 g g fis4 fis8 |
  e8( d) cis d4 \breathemoj d8 |
  \markMoj
  c'4. c8 h a |
  h4 h8 h a g |
  \phrasingSlurDashed
  a8\( h\) a ~ a4. |
  r4. r4 d,8 |
  \phrasingSlurSolid
  c'4 c8 h\( a\) g |
  h4 h8 h a g |
  \phrasingSlurDashed
  a8(\( h) a ~ a4.\) |
  r2. |
  \markMoj
  h8 h h h4 a8 |
  a4. r4 h8 |
  h4 h8 cis4 h8 |
  a4. r4 fis8 |
  e8 d d e d ~ d16 d |
  e8 d d e d ~ d16 d |
  g8 g g8 h4 a8 |
  a2. ~ |
  a2. |
  \bar "|."
}

tekst = \lyricmode {
  Singt dem HERRN ein neu -- es Lied.
  Singt dem HERRN a -- lle Welt.
  Singt dem HERRN und lobt sei -- nen Na -- men.
  Ver -- kün -- det von Tag zu Tag sein Heil.

  \set stanza = "1."
  Er -- zählt un -- ter den Hei -- den von sei -- ner Herr -- lich -- keit,
  _ un -- ter a -- _ llen Völ -- kern von sei -- nen Wun -- dern.

  Lasst uns nicht eh -- er ruh‘n,
  bis je -- der Mensch be -- kennt,
  dass Je -- sus der Schöp -- fer, Er -- lö -- ser
  und Ret -- ter und Herr al -- ler Her -- ren ist. __ 	
}

tekstDva = \lyricmode {
  \repeat unfold 31 {\skip4}
  \set stanza = "2."
  _ Sagt un -- ter den Hei -- den: Der HERR ist Kö -- _ nig!
  Den Hi -- mmel und auch die Er -- de hat er ge -- macht. __ _
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  d2. | a4. h:m | g2. | a |
  d2. | a4. h:m | g4. d4. | a4. d |
  c2. | g | d | d | c | g |
  a2. | a | h:m | fis:m | h:m | fis:m |
  g2. | g | g | a | a |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
    %\addlyrics { \tekstTri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 4 = 100 }
}

\markup {
  \vspace #1.5
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [8]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 3 \teeny \italic {bridge} }      
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic {chorus (modulation:+1)}} }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {:7-8 x3} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {outro [2]} }
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
