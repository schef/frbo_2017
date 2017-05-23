\version "2.19.49"

%\language "deutsch"
\include "s02_frbo.ily"

\header {
  title = "LICHT VERTREIBT DIE DUNKELHEIT"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Jesaja 9,1.5; 7,14"
  broj = "3"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Text und Musik: Frank Bosch | Izaija 9,17.14 } }
}

\include "de_footer.ily"

\paper {
  \aFourL
  %system-system-spacing.padding = #2.5
  %annotate-spacing = ##t
  page-count = #1
}

note = \relative c' {
  \key f \major
  \time 4/4
  
  %one
  \partial4
  c4 |
  \markMoj
  \bar "|"
  f2 e4 e |
  f8( e) d c ~ c2 |
  f4 f g8( f4) e8 ~ |
  e8 d ~ d2 c8 c |
  f4 f e e8 e |
  f8( e) d c ~ c2 |
  f4 f8( g) g4 a ~ |
  a8 a16( g f2.) | \break
  \bar "||"
  
  \markMoj
  \once \override Score.RehearsalMark.Y-offset = #3.7
  f4. f8 e4 c |
  g'4. g8 f4. c8 |
  a'4 a g4. c,8 |
  b'4 b a2 |
  r8 c8 c d d4. c8 |
  c8( b) b( a) a2 |
  b4 b a g8( f) |
  g2 a2 | \break
  \bar "||"
  
  \markMoj
  \once \override Score.RehearsalMark.Y-offset = #4 
  f8 c c f g c,16 c ~ c4 |
  a'8 b a16 g8. f4. f8 |
  a8 b a g g16 f8. r8 f8 |
  f8 e f g a4( g) |
  f8 c c f g c,4 c8 |
  a'8 b16 c ~ c4 a8 g16( f ~ f8) f |
  a8 b a g g8 f4. |
  f8 e f g a4( g) |
  \bar "|."
}

tekst = \lyricmode {
Das Volk, das im Fin -- stern lebt, sieht ein gro -- ßes __ Licht; 
ü -- ber Men -- schen, die oh -- ne Hoff -- nung sind, strahlt ein hel -- ler __ Schein.

Licht ver -- treibt die Dun -- kel -- heit.
Ein Kind bringt uns Ge -- bor -- gen -- heit.  
Sein Na -- me ist  E -- ma -- nu -- el, 
Gott ist wirk -- lich mit uns. 

Je -- sus kam in die -- se Welt als ein hel -- les Licht.
Ob -- wohl von ihm ge -- schaf -- fen, er -- kann -- te sie ihn nicht. 
Doch wer Je -- sus auf -- nimmt, sein Le -- ben auf ihn baut,
der ist sein Kind auf e -- wig, weil er ihm ver --  traut. __
}

%tekstDva = \lyricmode {
%
%}


akordi = \chordmode {
  \skip4
  f2 f:maj7 | b/f f | f c/e | d:m7 b | f f:maj7 |
  b/f f | d:m c | f2 b/f |
  \set chordChanges = ##f
  f2 c/e |
  \set chordChanges = ##t
  g:m d:m | f/a c4:sus4 c4 | g2:m d:m | f/a b | c d:m | g d:m | c f |

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
