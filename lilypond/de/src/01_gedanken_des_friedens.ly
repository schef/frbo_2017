\version "2.19.49"

\include "s02_frbo.ily"

\header {
  title = "GEDANKEN DES FRIEDENS"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Jeremia 29,11"
  broj = "1"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Text und Musik: Frank Bosch | Jeremija 29,11 } }
}

\include "de_footer.ily"

\paper {
  \aFourL
}

note = \relative c' {
  \key f \major
  \time 4/4

  %one
  \partial8*5
  a8 a4 b4 |
  \markMoj
  c4 f8 f ~ f f e g ~ |
  g8 f ~ f2.
  r4 a8 a ~ a g4 b8 ~ |
  b8 a ~ a4 a8( b) c d,( ~ |
  d2. ~ d8 c ~ |
  c2) e8( f) g g ~ |
  g8 c, ~ c2. |
  r4 r8 a a4 b |
  c4 f8 f ~ f f e g ~ |
  g8 f ~ f2.
  r4 a8 a ~ a g4 b8 ~ |
  b8 a ~ a4 a8( b) c d,( ~ |
  d2. ~ d8 c ~ |
  c2) e8( f) g g ~ |
  g8 c, ~ c2. |
  r4 r8
  %two
  \breathemoj
  a8 a a b4 |
  \bar "||"
  
  %two
  \markMoj
  %\once \override Score.RehearsalMark.Y-offset = #3.16
  c4( f8) f ~ f2 |
  r4 r8 c8 g'4 e8 f ~ |
  f1 ~ |
  f2 d8 d e f ~ |
  f8 f d f ~ f8 g4 g8 ~ |
  g8 f ~ f4 d8 d e f ~ |
  f8 f f f( ~ f g) a a ~ |
  a8 g ~ g c, b' b a a( ~ |
  a2. ~ a8 g) |
  g4. c,8 g'4 e8 f ~ |
  f1 ~ |
  f2 a8( g) f( g ~ |
  g8) f( ~ f2. |
  e2) e8( f) g g ~ |
  g8 f ~ f2. |
  r1 |
  \bar "|."
}

tekst = \lyricmode {
Denn ich weiß wohl, was ich für Ge -- dan -- ken, 
ü -- ber Euch ha -- be, sagt der HERR, __ der Euch lieb -- hat.
Denn ich weiß wohl, was ich für Ge -- dan -- ken, 
ü -- ber Euch ha -- be, sagt der HERR, __ der Euch lieb -- hat.

Ge -- dan -- ken des Frie -- dens und nicht des Leids, __
dass ich Euch Hoff -- nung und Zu -- kunft ge -- be, 
dass ich Euch Hoff -- nung und Zu -- kunft ge -- be.
Ge -- dan -- ken des Frie -- dens und nicht des Leids, __
sagt der __ HERR, __ der Euch lieb -- hat.
}

%tekstDva = \lyricmode {
%
%}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  %one
  \skip 8*5
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
