\version "2.19.49"

\include "s02_frbo.ily"

\header {
  title = "LJUBAV JE STRPLJIVA"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "1. Korinćanima 13,4-5.13"
  broj = "2"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Tekst i glazba: Frank Bosch | 1. Korinther 13,4-5.13 } }
}

\paper {
  \aFourL
   system-system-spacing.padding = #2.2
}

note = \relative c'' {
  \key c \major
  \time 4/4
  
  %one
  \markMojPoc
  g4( a8) e( e2) |
  r2
  \parenthesize
  e4 d |
  \tieDashed
  d4 c8 c\(~c4 c\) |
  \tieSolid
  a'4( g g e) |
  g4( a8) e( e2) |
  r4
  \parenthesize
  f e d |
  \phrasingSlurDashed
  d4\( c8\)
  \phrasingSlurSolid
  c8( c2) |
  a'4( g g e) |
  g4( a8) e( e2) |
  r4
  \parenthesize
  f
  \parenthesize
  e d |
  d4 c8 c8( c2) |
  r2 r4 e |
  f4 f8 f~f2 |
  r4
  \phrasingSlurDashed
  g2\( e4\) |
  \phrasingSlurSolid
  e4 d8 d~d2 |
  r1 |
  
  %two
  \once \override Score.RehearsalMark.self-alignment-X = #-0.8
  \markMoj
  \bar ":|."
  c'8 c~c4 c8 c c h~ |
  h4 h8 h~h a g h~ |
  h4 a2 a4 |
  a4( g) g e8 g |
  a4 a8 a~a2|
  a4 g f e |
  g1 |
  r1 |
  \bar ".|:"
  
  %three
  \markMoj
  \bar ".|:"
  \repeat volta 2 {
    c4.( e,8)~e4 d~ |
    d1 |
    c'4.( e,8~)e4 d~( |
    d8 e c4~c2) |
    c'4. e,8~e2 |
    a4 f f2 |
  }
  \alternative{
    {e2 e | d2 a'4( h) |}
    {e,2 d | c1 |}
  }
  \bar "|."
}

tekst = \lyricmode {
  Lju -- bav _ je str -- plji -- va, __ _ oooooh. __
  Lju -- bav _ je do -- bro -- sti -- va, __ mmmmh. __
  Lju -- bav _ _ ne za -- vi -- di, __
  ne hva -- sta se __ i ne o -- ho -- li. __

  Sa -- da o -- sta -- je vje -- ra, na -- da
  i lju -- bav to tro -- je,
  a -- li naj -- ve -- ća __ me -- đu nji -- ma je...
  Lju -- bav, __ lju -- bav, __ lju -- bav ni -- kad ne pre -- sta -- je,

  ooh. __

  pre -- sta -- je.
}

tekstDva = \lyricmode {
  Lju -- bav ni -- je ne -- pri -- stoj -- na, oooooh. __
  Lju -- bav ne tra -- ži svo __ _ -- je, __ mmmmh. __
  Lju -- bav se ne raz -- dra -- žu -- je, __
  za -- bo -- rav -- lja __ i __ _ pra -- šta zlo.  
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  %one
  c1 | g | a:m | f |
  c1 | g | a:m | f |
  c1 | g | a:m | a:m |
  f1 | f | g | g |
  %two
  a1:m | g | d:m | c |
  f1 | f | g | g |
  %three
  a2:m a4:m g4 | g1 |
  c1 | f | a:m | f |
  c1 | g |
  \set chordChanges = ##f
  g | c |
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
  \midi { \tempo 8 = 174 }
}

\markup {
  \vspace #1.5
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { verse  } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 3 \italic \teeny { bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { verse  } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 3 \italic \teeny { bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { chorus x2} } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { :33-36 (sec. volta) x2} } }
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
