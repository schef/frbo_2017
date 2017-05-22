\version "2.19.49"

%\language "deutsch"

\header {
  title = "NIŠTA NE MOŽE NAS ODVOJITI"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Rimljanima 8,35.37-39"
  broj = "5"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
 system-system-spacing.padding = #2.5
}

note = \relative c' {
  \key f \major
  \time 2/2

  %one
  \partial 4*3
  c4 f e8 f ~ |
  \markMoj
  f2 f4 e8 f ~ |
  f4. f8 f4( g8) e ~ |
  e1 |
  r2 r4 f4 |
  g4 g8 g ~ g2 |
  r4 g4 a8 b ~ b4 |
  b4. a8 ~ a2 |
  r2 r4 g4 |
  g8 f ~ f f ~ f2 |
  r2 r4 c'8 c |
  c4( b2) b4 ~ |
  b2 f8 f f g |
  a2 a8 b4 c8 ~ |
  c4 b a b |
  b4( a4) a a |
  r4 \breathemoj d4( c) a |
  \markMoj
  g8 f ~ f f ~ f2 |
  r4 f8 c f( g) a a( ~ |
  a4 g2.) |
  r4 d'4 c8 a ~ a g( |
  f1) |
  r4 f f g |
  b4( a) a a ~ |
  a1 |
  d1 |
  a2 g4 f ~ |
  f4. c8 f( g) a g( ~ |
  g4 f2.) |
  c'4 b2. |
  r4 a4 a8( g) f f ~ |
  f1 |
  r1 |
  \markMoj
  d'1 ~ |
  d4 c c b |
  c4 d2 a4 ~ |
  a2 r4 c4 |
  c4. b8 ~ b4 c |
  b4( a) a4 g ~ |
  g1 |
  r1 |
  d'4 d8 d ~ d4 d8 d |
  d4 c r8 c4 b8 |
  c4 c c8 d4 a8 ~ |
  a2 r4 a8 a |
  b4 b r2 |
  b2 b8 a4. |
  a8( g ~ g2.) |
  r4 r8 \breathemoj c,8 c' b a g |
  \bar "||"
  \markMoj
  g4. a8 ~ a4 g ~ |
  g2 r4 c, |
  c'4. a8 ~ a g f4 ~ |
  f2 r4 a4 |
  b4. b8 ~ b4 b |
  b4 a a a( |
  g4) g2. |
  r4
  \bar "|."
}

tekst = \lyricmode {
U -- vje -- ren sam, __ da ni smrt ni ži -- vot, __
ni an -- đe -- li, __  ni po -- gla -- var -- stva,
ni sa -- da -- šnjost, ni bu -- du -- ćnost
ne mo -- že nas o -- dvo -- ji -- ti __ od Bo -- žje lju -- ba -- vi.

Ni -- šta ne mo -- že __ nas o -- dvo -- ji -- ti, __
o -- dvo -- ji -- ti __ od Bo -- žje lju -- ba -- vi __
i -- ska -- za -- ne __ u I -- su -- su, __
na -- šem Go -- spo -- di -- nu. __

Tko će nas o -- dvo -- ji -- ti __ od Kri -- sto -- ve lju -- ba -- vi? __
Ne -- vo -- lja i -- li tu -- ga il' pro -- gon -- stvo i -- li glad,
si -- ro -- ma -- štvo, strah i -- li  rat. __
U sve -- mu to -- me nad -- mo -- ćno __
po -- bje -- đu -- je -- mo __ po O -- no -- me
ko -- ji nas lju -- bi.
}

%tekstDva = \lyricmode {
%
%}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  %one
  \skip 4*3
  f1 | d:m | a:m7 | a:m7 |
  g1:m7 | c:7 | f2:sus4 f | f c/e | d1:m |
  d2:m f/c | b1 | b | f/c | f/c | c | c |
  f1 | f | es | es | b | b:m/des | f/c | f | d:m | a:m7 | b |
  f1/a | g:m7 | c:11 | es | f |
  b1 | c:7/b | a:m7 | d:m | g:m | g:m/f | c2/e g/d | c1 | b |
  c:7/b | a:m7 | d:m | g:m | g:m/f | c2/e g/d |
  c1 | b | c:7/b | a:m7 | d:m |
  g1:m | g:m/f | c2/e g/d | c4
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { modulation:+1 } }
      %\line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      %\line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { outro [12]} }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {outro [12]} }
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
