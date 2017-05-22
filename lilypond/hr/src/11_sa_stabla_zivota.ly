\version "2.19.49"

\include "s02_frbo.ily"

\header {
  title = "SA STABLA ŽIVOTA"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Dražen Radman"
  broj = "11"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Tekst i glazba: Frank Bosch | Himna za kamp Fokus 2015. } }
}

\paper {
 \aFourL
 score-markup-spacing.padding = #5
 system-system-spacing.padding = #2.5
 markup-markup-spacing.padding = #0
 %markup-system-spacing.basic-distance =#0
 last-bottom-spacing.padding = #0
 %annotate-spacing = ##t
 page-count = #1
}

note = \relative c' {
  \key c \major
  \time 4/4
  
  %one
  \markMojPoc
  e4 g g f8 f |
  e4 g g f |
  \phrasingSlurDashed
  e4 g8\( g\) a4 g8 f |
  e4 f e\( d\) |
  e4 g g f |
  e4 g8\( g\) a4 f8\( f\) |
  e4 g8 g a4 g |
  e4 e8\( f\) e4\( d\) |
  \phrasingSlurSolid
  
  %two
  \markMoj
  e4 a8 a a4 g8( f) |
  e4 e8( f) e4 d |
  e4 a8 a a4 a8 h |
  c4 c8( d) c( h) h4 |
  e,4 a8 a a4 g8( f) |
  e4 e8( f) e8( d) d4 |
  e4 a8 a a4. h8 |
  c4 c8 d c4( h) |
  
  %three
  \markMoj
  a4 \breathemoj a8 g a4 a8 g |
  e4. e8 h'4 h8 c16 h ~ |
  h8 a a g a4 a8 g |
  e4. e8 h'4 h8 c16 h ~ |
  h8 a a g a4 a8 g |
  e4. e8 h'4 h8 c16 h ~ |
  h8 a a g a4 a8 g |
  e4. e8 h'4 h8 c16 h ~ |
  h8 a ~ a2. |
  
  %four
  \markMoj
  e4 g8 g g4 f |
  e4 g g f |
  e4 g8 g a4 g8( f) |
  e4 e8 f e4 d |
  
  %five
  \markMoj
  \bar ".|:"
  \repeat volta 2 {
    c'4 a g e |
    g4 f8 e ~ e2 |
    c'4 a g e |
  }
  \alternative{
    {g4 f8 e ~ e2 |}
    {e4 d8 c ~ c2 |}
  }
  \bar "|."
  
}

tekst = \lyricmode {
  \set stanza = "1."
Pi -- tam se: gdje do -- bro -- ta ra -- ste?
gdje str -- _ plje -- nje i bla -- gost ni -- če?
Plod taj mi svi tra -- ži -- mo za se. __ _
Sr -- ce nam, ka -- da na -- đe -- mo, kli -- če!
Na -- ša je du -- ša __ ta -- ko že -- dna
tra -- ži gdje nje -- na je i -- "zvor–" -- vo -- da.
Na -- ša je du -- ša __ ta -- ko __ gla -- dna
tre -- ba joj plod sa sta -- bla ži -- vo -- ta!      
Na na na, na na na, sa sta -- bla ži -- vo -- ta!
Na na na, na na na, sa sta -- bla ži -- vo -- ta!
Na na na, na na na, sa sta -- bla ži -- vo -- ta!
Na na na, na na na, sa sta -- bla ži -- vo -- ta! __

Mo -- ja je du -- ša bi -- la gla -- dna!
Sad ku -- ša plod sa __ sta -- bla ži -- vo -- ta!
Bo -- že, hva -- la, hva -- la ti. __
Bo -- že, hva -- la, hva -- la ti. __
hva -- la ti. __
}

tekstDva = \lyricmode {
  \set stanza = "2."
Ma, što sve lju -- di ne bi da -- li  
sa -- mo da ku -- ša -- ju lju -- bav, mir. __ _
Kad bi sa -- mo, sa -- mo _ zna -- li  
da bli -- zu je sta -- blo ra -- do -- _ sti! __ _
}


akordi = \chordmode {
  c2 f | c g | c f | c g | c f |
  c2 g | a:m f | c g | a:m f | c e:7 |
  a:m f | a:m e:7 | a:m f | c e:7 | a:m f |
  c2 e:7 | a:m f | c e:7 | a:m f |
  c2 e:7 | a:m f | c e:7 | a:m f |
  c2 e:7 | a1:m | c2 f | c g | c f |
  c2 g | f c | g a:m | f c | g a:m | g c |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
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
  \vspace #0
  \smaller \italic Leadsheet: \hspace #0.3
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [4] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic { bridge } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \italic \teeny { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 1 \teeny \italic { verse } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic { bridge } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 4 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 5 \italic \teeny { ending } }
            \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { outro [2] } }

    }
  }
}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.19.59  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49
%}
