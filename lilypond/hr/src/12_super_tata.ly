\version "2.19.49"

\include "s02_frbo.ily"

\header {
  title = "SUPER TATA"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Rimljanima 8,15"
  broj = "12"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Tekst i glazba: Frank Bosch | Römer 8,15 } }
}

\paper {
  \aFourL
}

note = \relative c'' {
  \key g \major
  \time 4/4
  
  %one
  \markMojPoc
  \once \override Score.RehearsalMark.X-offset = #6.4
    \once \override Score.RehearsalMark.Y-offset = #0
  r8 g g g fis e d c |
  h4 e8 d ~ d2 |
  r8 g g g fis e d e |
  e2. r4 |
  r8 g g g fis e d c |
  h4 e8 d ~ d2 |
  r8 c8 c d e fis g a |
  a2. r4 |
  
  
  %two
  \markMoj
  \bar ".|:"
  d,4 g fis8 g a fis |
  r8 h h h a g fis e |
  d4 g4 fis8 g a fis |
  r8 h h4 r8 a a4 |
  
  %three
  \markMoj
  \bar ":|.|:"
  d,4 g fis8 g a fis |
  r8 h4 h8 r8 a a4 |
  e4 g fis8 g a fis |
  r8 h h4 r8 a a4 |
  \bar ":|."
  g1 |
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
  Naj -- bo -- lji O -- tac cije -- lom sve -- mi -- ru, __
  u -- vijek je tu kad ja sam sam.
  U -- no -- si mir u mo -- me ne -- mi -- ru, __
  i taj svoj mir će da -- ti vam.

  Su -- per, su -- per Ta -- ta,
  na ze -- mlji i na ne -- bu ne -- ćeš na -- ći bo -- ljeg,
  su -- per, Ta -- ta!
  
  Na, na, na, na, na, na,
  su -- per, Ta -- ta!
  Na, na, na, na, na, na,
  su -- per, Ta -- ta!
  
  Ooo.
}

tekstDva = \lyricmode {
  \set stanza = "2."
  Naj -- bo -- lji O -- tac cije -- lom sve -- mi -- ru, __
  On bri -- še su -- ze "s o" -- ka mog.
  Ka -- da ga tre -- bam, On je u -- vijek tu, __
  že -- liš u -- po -- znat O -- ca tog?
  
  Bog je su -- per Ta -- ta, On  stva -- rno po -- zna me -- ne
  i ra -- zu -- mije u -- vijek,
  su -- per, Ta -- ta!
}

tekstTri = \lyricmode {
  \set stanza = "3."
  Naj -- bo -- lji O -- tac cije -- lom sve -- mi -- ru, __
  On i -- ma od -- go -- vor na sve.
  I svi se kla -- nja -- ju tom Vla -- da -- ru, __
  On bje -- še, jest i do -- ći će.

}

tekstCetiri = \lyricmode {
  \set stanza = "4."
  Na -- ša -- o sam tog O -- ca naj -- bo -- ljeg,
  a na -- ći mo -- žeš ga i ti.
  Da, mo -- žeš Nje -- ga na -- ći za -- u -- vijek,
  tre -- baš se sa -- mo mo -- li -- ti.
}

akordi = \chordmode {
g2 d | e:m d | g d | e:m d |
g d | e:m d | c1 | d |
g2 d | e:m d | g d | e:m d |
g2 d | e:m d | g d | e:m d |
g1 |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
    \addlyrics { \tekstTri }
    \addlyrics { \tekstCetiri }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [5] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
            \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus }}}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
            \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 3 \teeny \italic { ending } } }
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
