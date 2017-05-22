\version "2.19.49"

%\language "deutsch"

\header {
  title = "SVJETLO JE ZASJALO"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Izaija 9,1.5; 7,14"
  broj = "10"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
 min-systems-per-page = #6
 %system-system-spacing.padding = #2.2 

}

note = \relative c' {
  \key f \major
  \time 4/4
  
  %one
  \once \override Score.RehearsalMark.self-alignment-X = #-1.8
  \once \override Score.RehearsalMark.Y-offset = #3.2
  \mark \default
  f8 f f f f4. f8 |
  f8 e d c c2 |
  f8 f f f g( f) e d ~ |
  d2 r4 r8 c8 |
  f8 f f4 f8 f4 f8( ~ |
  f8 e) d( c) c4. c8 |
  f4 f g a8 g ~ |
  g8 f ~ f4 r2 |
  \bar "||"
  
  \markMoj
  \once \override Score.RehearsalMark.Y-offset = #3.8
  f4.( e16 f) e4. c8 |
  g'4. g8 f4. c8 |
  a'4. a8 g4. c,8 |
  b'4. b8 a2 |
  c4 c8 c d4. c8 |
  c8( b) b( a) a2 |
  b2( a4) a |
  g4.( a8) a2 |
  \bar "||"
  
  \markMoj
  f8 c4 f8 g c,16 c ~ c8. b'16 |
  a16 b8. a8 g g f16 f ~ f8. f16 |
  a8 b a g g f f e |
  f8 e d e e2 |
  f8 c c f g c, ~ c4 |
  c'8 b a g g f ~ f8. g16 |
  a8 b a g g8 f4 d8 |
  f8 g f e f( e) e4 |
  \bar "|."
}

tekst = \lyricmode {
Na -- rod ko -- ji je u ta -- mi ho -- di -- o, svje -- tlo vi -- dje ve -- li -- ko. __
Nad o -- ni -- ma ko -- ji sta -- nu -- ju u ze -- mlji smr -- tne sje -- ne. __
   
%Refr:
Svje -- tlo je za -- sja -- lo,
jer dije -- te nam se ro -- di -- lo.
I -- me mu je E -- ma -- nu -- el,
Bog __ je "s na" -- ma.

%Bridge:
Svje -- tlo je za -- sja -- lo, __ jer dije -- te nam se ro -- di -- lo.
Dok cije -- lo čo -- vje -- ča -- nstvo je u ta -- mi ho -- di -- lo.
I -- sus na -- še svje -- tlo, __  za -- u -- vijek je "s na" -- ma __
i vo -- di  nas kroz ži -- vot dok svu -- gdje vla -- da ta -- ma.
}

%tekstDva = \lyricmode {
%
%}


akordi = \chordmode {
f2 f:maj7 | b/f f | f c/e | d:m7 b | f f:maj7 |
b/f f | d:m c | f4 b/f c2/f |
\set chordChanges = ##f
f2 c/e |
\set chordChanges = ##t
g:m d:m | f/a c | g:m d:m | f/a b | c d:m | g:m7 d:m | c f |

f2 c/e | f/a b | f d:m | g:m a:7 |
f2 c/e | f/a b | f d:m | g:m a:7 |
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    %\addlyrics { \tekstDva }
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
  \vspace #1
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [4] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus }}}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 3 \teeny \italic { bridge } }}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { \teeny \italic { modulation:+3 } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) {\teeny \italic { outro [3] } } }
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
