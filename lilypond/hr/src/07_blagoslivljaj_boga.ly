\version "2.19.49"

%\language "deutsch"

\header {
  title = "BLAGOSLIVLJAJ BOGA"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Psalam 103,1-5"
  broj = "7"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
  %system-system-spacing.padding = #2.2 
}

note = \relative c'' {
  \key g \major
  \time 6/8
  
  %one
  \once \override Score.RehearsalMark.self-alignment-X = #-1.8
  \once \override Score.RehearsalMark.Y-offset = #3.7
  \mark \default
  r8 h a h4 a8 |
  a8 g4 ~ g4. |
  h4 c8 h( a4) |
  g4. ~ g4 h8 |
  h4. d8 d c |
  h4 a8 r g fis |
  e4 g8 g a4 |
  a2. |
  r8 h a h4 a8 |
  a8 g4 ~ g4. |
  h4 c8 h( a4) |
  g2. |
  h4. d4 c8 |
  h8 a g r8 g fis |
  e4 g8 r g fis |
  g2. |
  \bar "||"
  \markMoj
  r8 c c c h a ~ |
  a4. r4 d,8 |
  h'4 c8 h( a) g ~ |
  g2. |
  r8 c c c h a ~ |
  a4. r4 d,8 |
  h'4 c8 h a( g) |
  g2. |
  r4. a8 a g |
  g8 fis fis ~ fis4. |
  r4. h8( a) a |
  a8 g4 r4. |
  r4. a8 a a16 g |
  g8 fis4 ~ fis4. |
  r4 d8 h'8( a) g |
  g2. |
  r4. h8 h a |
  a8 g g ~ g4. |
  r4. h4( a8) |
  g4. r4 g8 |
  a4 a8 r a a |
  a8 a4 r8 h c |
  a2. |
  r2. |
  \bar "|."
}

tekst = \lyricmode {
Bla -- go -- sli -- vljaj Bo -- ga, __ du -- šo mo -- ja, __
i sve što je u me -- ni sve -- to i -- me nje -- go -- vo!
Bla -- go -- sli -- vljaj Bo -- ga, __ du -- šo mo -- ja
i ne za -- bo -- ra -- vi do -- bro -- čin -- stva nje -- go -- va:

On ti o -- tpu -- šta __ sve grije -- he tvo -- je. __
On i -- scje -- lju -- je __ sve sla -- bo -- sti tvo -- je.
On ti od pro -- pa -- sti __ ču -- va ži -- vot.
Kru -- ni te do -- bro -- tom __ i lju -- bav -- lju.
Ži -- vot ti i -- spu -- nja do -- brim.
K'o or -- lu ti se mla -- dost ob -- nav -- lja.
}

%tekstDva = \lyricmode {

%}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
g2. | e:m | g:maj7 | e:m | g4. d | e:m g/h | a2.:m7 | d |
g2. | e:m | g:maj7 | e:m | g4. d | e:m g/h | a:m7 d | g2. |
a2.:m | d:9 | g | e:m | c | d | g4. d/fis | e2.:m | a:m |
d2. | g | e:m | c | d | g4. d/fis | e2.:m | a:m | d | g4. d/fis | e2.:m | a:m | a:m | d:sus4 | d |
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [16+8] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic { chorus [16+1] } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85)  { 1 \teeny \italic { solo [16+2]} } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \teeny \italic { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic { chorus x2} } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic { :13-16 } } }
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
