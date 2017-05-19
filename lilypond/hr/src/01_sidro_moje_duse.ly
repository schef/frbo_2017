\version "2.19.49"

\header {
  title = "SIDRO MOJE DUŠE"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Hebrejima 6,19"
  broj = "1"
}

\include "s02_frbo.ily"

\paper {
  \aFourL
  min-systems-per-page = #7
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
  e4.( d8) d4.
  \parenthesize
  g,8 |
  e'4 g a g |
  e4.( d8) d4. g,8 |
  e'4 g c, d |
  e4.( d8) d4.
  \parenthesize
  g,8 |
  e'4 g a g |
  e4.( d8) d4.
  \breathemoj g,16 g |
  \bar "||"
  
  %three
  \markMoj
  \once \override Score.RehearsalMark.X-offset = 3.4
  d'4.( c8) c2 |
  e8( d f4) e4.\(e8\) |
  f4 f e d8( c) |
  d4.( c8) c4.
  \breathemoj e16 g |
  \bar "||"
  
  %four
  \markMoj
  \once \override Score.RehearsalMark.X-offset = 3.3
  a8 e d( c~c4.) c8 |
  c8\( d\) e4 d4. e16 g |
  a8 e d( c~c4.) c8 |
  a'8\( g\) e4 d4. e16 g |
  a8 e d( c~c4.) c8 |
  c8\( d\) e4 d2 |
  f4 f e d8( c) |
  d4.( c8) c2 |
  \bar "|."
}

tekst = \lyricmode {
  \repeat unfold 15 { \skip1 }
  \set stanza = "1."
  Bo -- že, ti si si -- dro, __ _ si -- dro mo -- je du -- še.
  Kad va -- lo -- vi me pla -- še __ _ i o -- lu -- ja pu -- še.
  Ti si si -- dro, si -- dro, __ _ si -- dro mo -- je __ du -- še.
  Ti si u -- vijek tu __ i dr __ _ -- žiš me,
  ti si u -- vijek tu __ i dr __ _ -- žiš me.
  Ti si u -- vijek tu __ i dr __ _ -- žiš me,
  si -- dro mo -- je __ du -- še.
}

tekstDva = \lyricmode {
  \repeat unfold 15 { \skip1 }
  \set stanza = "2."
  Ti si svje -- ti -- o -- nik, i svje -- tlo mo -- je du -- še. __ _
  Kad se ne -- bo smra -- či, i vje -- tar kad za -- pu -- še.
  Ti si svje -- tlo, svje -- tlo i svje -- ti -- o -- nik du -- še.
  Ti si u -- vijek tu __ po -- ka -- zu -- ješ put,
  ti si u -- vijek tu __ po -- ka -- zu -- ješ put.
  Ti si u -- vijek tu __ po -- ka -- zu -- ješ put,
  svje -- ti -- o -- nik du -- še.
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  %zero
  a2:m f |
  c2/e g/h |
  a2:m f |
  d2:m g2 |
  \break
  %one
  c4 c/e f g |
  a2:m g |
  c4 c/e f g |
  a2:m g4:sus4 g |
  c4 c/e f g |
  a2:m g |
  c4 c/e f g |
  a2:m g4.:sus4 g8 |
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
    \new ChordNames { \jazzChords \akordi }
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
