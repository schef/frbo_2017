\version "2.19.49"

%\language "deutsch"

\header {
  title = "NICHTS KANN UNS TRENNEN"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Römer 8,35.37–39"
  broj = "7"
}

\include "s02_frbo.ily"
\include "de_footer.ily"

\paper {
 \aFourL
 system-system-spacing.padding = #2.8
}

note = \relative c' {
  \key f \major
  \time 2/2

  %one
  \partial 4*3
  c8 c f4 e8 f ~ |
  \markMoj
  f4. c8 f4 e8 f ~ |
  f2. f4 ~ |
  f8 f4( g8) e2 |
  r2 r4 e8 f |
  g4 g2 r8 c,8 |
  g'4 g4 a4 b8 b ~ |
  b8 a ~ a2. |
  r2 a4 g4 |
  g4 f8 f8 ~ f e f4 ~ |
  f2 r4 c'4 ~ |
  c8 c4( b8) b4 a8 b ~ |
  b2 f4 g |
  a4 a a a8 c ~ |
  c4 b a8 g4 g8 ~ |
  g1 |
  r4 \breathemoj d'4 c8 a ~ a4 |
  \markMoj
  g8 f ~ f2. |
  r4 c8 c f8( g) a a ~ |
  a4 g2. |
  r4 d'4 c8 a ~ a4 |
  g8 f ~ f2. |
  r4 r8 c8 g'8( a) b b ~ |
  b8 a ~ a2. |
  r1 |
  d2 r2 |
  a2 g4 f ~ |
  f2 f4 g8 g ~ |
  g8 f ~ f f a( b) c c ~ |
  c4 b a g8 g ~ |
  g4. a8 g4 f8 f ~ |
  f1 |
  r1 | %\break
  \markMoj
  %\once \override Score.RehearsalMark.Y-offset = #4
  d'1( ~ |
  d4 c) c8 b4 c8 ~ |
  c4 a2. ~ |
  a2 r4 b8 c |
  c2( b2 ~ |
  b4 a) a4 a ~ |
  a4 g2. |
  r1 |
  d'4 d8 d ~ d d ~ d d ~ |
  d4 r4 r8 d8 c b |
  c4 c c d8 b ~ |
  b8 a( g4) r4 a8 b |
  b4 b r8 b8 b b |
  b2 b8 a4. |
  g1 |
  r4 r8 \breathemoj c,8 c' b a g |
  \bar "||"
  \markMoj
  g4 a8 g( ~ g f) g4 ~ |
  g2 r4 r8 c,8 |
  c'4 b a g8 g ~ |
  g8 f ~ f4 r4 f4 |
  b1( |
  b4) c b a |
  a1 |
  g4
  \bar "|."
}

tekst = \lyricmode {
Denn ich bin ge -- wiss, __ dass we -- der Tod __ noch __ Le -- ben, 
we -- der En -- gel noch Mäch -- te noch Ge -- wal -- ten, 
we -- der Ge -- gen -- wär -- ti -- ges __ noch Zu -- künf -- ti -- ges, __ 
Uns von Go -- ttes gro -- ßer Lie -- be tre -- nnen kann. __

Nichts kann uns tre -- nnen, von der Lie -- be Go -- ttes, 
Nichts kann uns tre -- nnen, von sei -- ner Lie -- be. __
Nichts, nichts, trennt uns __ von der Lie -- be,
die uns in Je -- sus, uns -- rem Herrn, er -- schie -- nen ist. __

Wer __ kann uns tre -- nnen __ von der Lie -- be Chris -- ti? 
Lei -- den o -- der Angst o -- der Ver -- fol -- gung o -- der Hun -- ger
o -- der Ar -- mut o -- der Ge -- fahr o -- der Krieg? 
In a -- llem ü -- ber -- win -- den wir __ weit __ durch den, der uns ge -- liebt hat. 
Durch den, __ der uns ge -- liebt hat.
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
