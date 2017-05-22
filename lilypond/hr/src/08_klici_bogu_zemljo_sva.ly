\version "2.19.49"

%\language "deutsch"

\header {
  title = "KLIČI BOGU ZEMLJO SVA"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Psalam 100"
  broj = "8"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
  %system-system-spacing.padding = #2
  %score-markup-spacing.padding = #2
  page-count = #1
}

note = \relative c'' {
  \key d \major
  \time 6/8
  
  %one
  \once \override Score.RehearsalMark.self-alignment-X = #-1.8
  \once \override Score.RehearsalMark.Y-offset = #3.7
  \mark \default
  h,8( fis') d e4 e8 |
  e8( a) g fis4. |
  h8. a16 g8 fis e d |
  fis4( g8) fis4 h,8 |
  h8 fis' d e8. e16 e8 |
  e8( a) g fis4. |
  e8. fis16 e8 d4 cis8 |
  h4. r4. |
  
  \markMoj
  \bar ":|."
  a'8. g16 fis e e4 cis8 |
  d4. r8 fis8( g) |
  a8. g16 fis e e4 cis8 |
  d4. r8 d e |
  fis8.( e16) d8 r4 d8 |
  d4 fis8 e d e |
  fis8. e16 d8 r4 d8 |
  d4 fis8 e d e |
  fis8. e16 d8 r4 d8 |
  d4 fis8 e4 d8 |
  a'8( g fis e d cis) |
  cis2. |
  d4 fis8 e8( d) cis |
  d2. |
  r2. |
  \bar "||"
  
  \markMoj
  h8 h h h( cis) d |
  cis4. r4 cis8 |
  cis 4 cis8 cis( d) e |
  d4. r4 d8 |
  d4 d8 e4 fis8 |
  e4. r4. |
  e4.( fis4) g8 |
  fis2. |
  h4( a8) a4 g8 |
  fis2. |
  e4. e4 g8 |
  g4 fis8 fis4. |
  h4( a8) a4 g8 |
  fis2. |
  fis4( e8) e4 d8 |
  h2. |
  \bar "|."
}

tekst = \lyricmode {
Kli -- či Bo -- gu ze -- mljo sva,
slu -- ži -- te Bo -- gu "s ve" -- se -- ljem.
Pred li -- ce mu do -- đi -- te,  do -- đi -- te,
"s ra" -- do -- snim kli -- ca -- njem.

Znaj -- te da je Go -- spod Bog, oh, __ znaj -- te da je Go -- spod Bog.
On nas stvo -- ri hej  hej hej hej
Mi smo nje -- go -- vi hej hej hej hej
Nje -- gov na -- rod smo	hej hej hej hej
i o -- vce pa -- še nje -- go -- ve.

U -- đi -- te "s hva" -- la -- ma, na vra -- ta nje -- go -- va,
u dvo -- re nje -- go -- ve. "S pje" -- sma -- ma  
sla -- vi -- te Ga, i -- me mu hva -- li -- te.
Do -- bar je Bog, do -- bar je Bog.
}

%tekstDva = \lyricmode {

%}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
h4.:m e:m | a d |  g fis:m | h:m fis:m | h:m e:m |
a4. d | e:m fis:m | h2.:m | d4. a | h2.:m |
d4. a | h2.:m | d4. g | d a | h:m g |
d4. a | h:m g | d a | d a | h2.:m |
g4. a | d2. | d2. | h:m | fis |
fis2. | h:m | d | a | fis | h:m |
g2. | d | a | h:m | g | d | fis:m | h:m |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    %\addlyrics { \tekstDva }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [1] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85)  { 2 \teeny \italic { verse } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 3 \teeny \italic { bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { \teeny \italic { outro [6] } } }
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
