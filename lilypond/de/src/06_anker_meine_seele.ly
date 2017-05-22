\version "2.19.49"

\include "s02_frbo.ily"

\header {
  title = "ANKER MEINER SEELE"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Hebräer 6,19"
  broj = "6"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Text und Musik: Frank Bosch | Hebrejima 6,19 } }
}

\include "de_footer.ily"

\paper {
  \aFourL
  page-count = #1
}

note = \relative c' {
  \key c \major
  \time 4/4

  %one
  \markMojPoc
  c'4 h g e' |
  g4 f8 e d2 |
  c4 h8 c a2 |
  f'4 e d2 |
  \bar "||"
  
  %two
  \once \override Score.RehearsalMark.self-alignment-X = #-0.8
  \markMoj
  e,4 g c, d |
  e4.( d8) d2 |
  e4 g a g |
  \phrasingSlurDashed
  e4.(\( d8) d4.\) g,8 |
  e'4 g c, d |
  e4.( d8) d4.
  \parenthesize
  g,8 |
  e'4 g a g |
  e4.(\( d8) d8\) g, 
  \breathemoj g8 g |
  \bar "||"
  
  %three
  \markMoj
  d'4.( c8) c4. g8 |
  e'8( d f4) e2 |
  f4 f8( g) e4 d8( c) |
  d4.( c8) c4
  \breathemoj e8 g |
  \bar "||"
  
  %four
  \markMoj
  a8 e e c ~ c4. a8 |
  \phrasingSlurSolid
  c8\( d\) e8 d ~ d4 e8 g |
  a8 e e c ~ c4. c8 |
  a'8\( g\) e8 d ~ d4 e8 g |
  a8 e e c ~ c4. g8 |
  c8\( d\) e d ~ d2 |
  f4 f8( g) e4 d8( c) |
  d4.( c8) c2 |
  \bar "|."
}

tekst = \lyricmode {
  \repeat unfold 15 { \skip1 }
  \set stanza = "1."
  Herr Du bist der An -- ker, An -- ker mei -- ner See -- le.
  Wenn Wel -- len mich be -- drän -- gen, "" mich mit Sor -- gen quä -- len.
  Du  bist der An -- ker, der An -- ker, An -- ker mei -- ner See -- le.
  Du bist im -- mer bei mir und hältst _ mich fest.
  Du bist im -- mer bei mir __ und hältst _ mich fest.
  Du bist im -- mer bei mir und hältst _ mich fest.
  An -- ker __ mei -- ner See -- le.
}

tekstDva = \lyricmode {
  \repeat unfold 15 { \skip1 }
  \set stanza = "2."
  Herr Du bist mein Leucht -- turm in der dunk -- len Nacht __ _
  und wenn ich nicht mehr se -- he und ha -- be kei -- ne Macht, __ _ 
  Du bist der Leucht -- turm, der Leucht -- turm,  
  Leucht -- turm mei -- ner See -- le.
  Du bist im -- mer bei mir und weist mir den Weg.
  Du bist im -- mer bei mir __ und weist mir den Weg.
  Du bist im -- mer bei mir und weist mir den Weg.
  Leucht -- turm mei -- ner See -- le.
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  %zero
  a2:m f |
  c2/e g/h |
  a2:m f |
  d4:m f g2 |
  \break
  %one
  c4 c/e f g |
  c2 g |
  c4 c/e f g |
  a2:m g4:sus4 g |
  c4 c/e f g |
  c2 g |
  c4 c/e f g |
  a2:m g4:sus4 g4 |
  %two
  d2:m7 a:m |
  g4/d g/h c2 |
  f2 a:m |
  g2 c |
  %three
  a2:m f |
  c2 g |
  a2:m f |
  c2/e g/h |
  a2:m f |
  c2 g |
  d2:m7 a:m |
  g2 c |
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
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
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 3 \italic \teeny { bridge 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { chorus 1. } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { solo } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 3 \italic \teeny { bridge 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { chorus 2. } } }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 4 \teeny \italic { solo } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic modulation:+1/2 }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { chorus 1. } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { :23-24 } } }
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
