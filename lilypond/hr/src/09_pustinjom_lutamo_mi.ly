\version "2.19.49"

%\language "deutsch"

\header {
  title = "PUSTINJOM LUTAMO MI"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Sandra Markov"
  broj = "9"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
 page-count = #1
 score-markup-spacing.padding = #4
 system-system-spacing.padding = #2.5
}

note = \relative c' {
  \key f \major
  \time 4/4
  
  %one
  \once \override Score.RehearsalMark.self-alignment-X = #-1.8
  \once \override Score.RehearsalMark.Y-offset = #3.4
  \mark \default
  \phrasingSlurDashed
  d4 d8 d d\( e\) f e ~ |
  e2. r8 d8 |
  d4 d8\( d\) d4 d8\( c\) |
  c8\( b\) a c ~ c2 |
  \phrasingSlurSolid
  d4 d e f8 f ~ |
  f2. r4 |
  f4 f g a8 a ~ |
  a2. r4 | \break
  
  \markMoj
  \once \override Score.RehearsalMark.Y-offset = #3.8
  \bar ":|."
  \repeat volta 2 {
  d4.( c8) c( b a g) |
  g4.( f16 g ~ g8) a ~ a4 |
  c8( b) b4 f8 g a a( ~ |
  a4 ~ a16 b16 a16 g) a2 |
  d4. f,16 a ~ a8 a ~ a a |
  c8( b) b( a) a2 |
  d,4.( c16 d) e2 |
  f4 g8( a) g2 |
  d'4.( c8) c( b a g) |
  g4.( f16 g ~ g8) a ~ a4 |
  c8( b) b4 f8 g a a( ~ |
  a4 ~ a16 b16 a16 g) a2 |
  d4. c16 c c8 b ~ b4 |
  r8 c b b ~ b a ~ a c ~ |
  c8 b b a g( f ~ f) e |
  }
  \alternative{
    {f8( g) e f ~ f4. e8 |}
    {f8 g e f ~ f2 | \bar"|."}
  }
}

tekst = \lyricmode {
\set stanza = "1."
Pu -- sti -- njom lu -- ta -- mo mi __
bez na -- de, _ vje -- re, _ iz -- gu -- blje -- ni, __
ni -- smo slu -- ti -- li __
I -- sus do -- la -- zi. __

Ha -- le -- lu -- ja, sla -- va, Go -- spo -- du hva -- la
kralj ro -- di se u ja -- sla -- ma
I -- sus me -- si -- ja.
ha -- le -- lu -- ja, sla -- va Go -- spo -- du hva -- la
an -- đe -- li kli -- ču sa ne -- be -- sa:	
„a __ na ze -- mlji mir svim lju -- di -- ma.“
To
lju -- di -- ma. __
}

tekstDva = \lyricmode {
Bog nam se smi -- lo -- va -- o __ ""  an -- đe -- la Ma -- ri -- ji po -- _ sla -- o __
re -- če: „ra -- duj se, __ Go -- spod "s to" -- bom je.“ __
}

tekstTri = \lyricmode {
  \set stanza = "2."
dije -- te što o -- _ dma -- ra __ na kri -- lu __ _ Ma -- ri -- je po -- _ či -- va __
zna li on da je __ naš i -- zba -- vi -- telj? __
}

tekstCetiri = \lyricmode {
Znaj, o -- bis -- ti --  nju -- ju se __ "" sva pro -- ro -- čan -- stva  što Bog za -- pi -- še: __
„za sve grje -- šni -- ke __ I -- sus ro -- di se“ __
}

akordi = \chordmode {
d1:m | f:maj/c | d2:m b | f c | d:m b |
f1 | d2:m c | f1 |

b2 f | c/e d:m | b1 | a:7 |
b2 f | c/e d:m | b c | f c |
b2 f | c/e d:m | b1 | a:7 |
b2 c | f d:m | b c | b4 c f2 | b4 c f2 |
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [8] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus }} \teeny \italic {(prima volta)} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse 2.} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { :21-24 } } }
    }
  }
}

%\markup {
%\vspace #2
%\smaller \italic Leadsheet: \hspace #2
%		\huge {
%		\rounded-box {
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(0 . 2.05) 3 \teeny \italic bridge }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold { 1 \italic \teeny chorus \bold \tiny ×2 } }
%		}
%	}
%}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.19.59  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49
%}
