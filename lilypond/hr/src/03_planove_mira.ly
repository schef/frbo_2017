\version "2.19.49"

\header {
  title = "PLANOVI MIRA"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Jeremija 29,11"
  broj = "3"
}

\include "s02_frbo.ily"

\paper {
  \aFourL
}

note = \relative c' {
  \key f \major
  \time 4/4

  %one
  \partial 4*2
  a4 b |
  \markMoj
  \bar "|"
  c4 f8 f f e ~ e f ~ |
  f2 f4 g
  g8 a ~ a4 a g8 b ~
  b8 a ~ a2 a8 c |
  d,1( |
  c2) e8 f g g ~ |
  g8 c, ~ c2. |
  r2 a4 b |
  c4 f8 f f e ~ e f ~ |
  f2 f4 g
  g8 a ~ a4 a g8 b ~
  b8 a ~ a2 a8 c |
  d,1( |
  c2) e8 f g g ~ |
  g8 f ~ f2. |
  r4
  %two
  \breathemoj
  a,4 a b |
  \bar "||"
  
  %two
  \markMoj
  \once \override Score.RehearsalMark.Y-offset = #3.16
  c2 f2 |
  r4 r8 e e2 |
  g4 f8 f ~ f2 ~ |
  f2 d4 e |
  e8 f f f ~ f f e g ~ |
  g8 f ~ f4 d e |
  e8 f f f ~ f g a a ~ |
  a8 g ~ g4 b8 b a4 |
  a2 a |
  r4 r8 g8 g2 |
  g4 f8 f ~ f2 ~ |
  f2 a8( g) f( g) |
  f1( |
  e2) e8 f g g ~ |
  g8 f ~ f2. |
  r1 |
  \bar "|."
}

tekst = \lyricmode {
  Jer ja znam svo -- je pla -- no -- ve, __
  ko -- je "s va" -- ma na -- mje -- ra -- vam
  ka -- že Bog, __ ko -- ji te vo -- li. __
  Jer ja znam svo -- je pla -- no -- ve, __
  ko -- je "s va" -- ma na -- mje -- ra -- vam
  ka -- že Bog, __ ko -- ji te vo -- li. __

  Pla -- no -- ve mi -- ra, a ne ne -- sre -- će, __
  da vam da -- dem bu -- du -- ćnost i na -- du,
  da vam da -- dem bu -- du -- ćnost i na -- du.
  Pla -- no -- ve mi -- ra, a ne ne -- sre -- će, __
  ka -- že __ Bog, __ ko -- ji te vo -- li. __
}

%tekstDva = \lyricmode {
%
%}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  %one
  \skip 4*2
  f1 | f | d:m7 | d:m7 |
  b1 | c | f | f |
  f1 | f | d:m7 | d:m7 |
  b1 | c | f | c:11 |
  
  %two
  f1 | c/e | d:m7 | d2:m7 d2:m7/c |
  b1 | f1/a | g:m7 | c:7 | f |
  c2/e a:m7 | d1:m7 | d:m7/c |
  b1 | c | f | c2:11 c:7 |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    %\addlyrics { \tekstDva }
    %    \addlyrics { \tekstTri }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [16] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { verse  } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { solo  } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { modulation:+1 } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus [24] } } }
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
