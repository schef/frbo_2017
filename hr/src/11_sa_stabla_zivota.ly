\version "2.19.49"

%\language "deutsch"

\header {
  title = "SA STABLA ŽIVOTA"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Himna za kamp Fokus 2015"
  broj = "11"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
}

note = \relative c' {
  \key f \major
  \time 4/4
  
  %one
  \once \override Score.RehearsalMark.self-alignment-X = #-1.8
  \once \override Score.RehearsalMark.Y-offset = #3.4
  \mark \default
  
}

tekst = \lyricmode {
Pi -- tam se: gdje do -- bro -- ta ra -- ste?
gdje str -- plje -- nje i bla -- gost ni -- če?
plod taj mi svi tra -- ži -- mo za se...
sr -- ce nam, ka -- da na -- đe -- mo, kli -- če!
na -- ša je du -- ša ta -- ko že -- dna
tra -- ži gdje nje -- na je i -- zvor-vo -- da...
na -- ša je du -- ša ta -- ko gla -- dna –
tre -- ba joj plod sa sta -- bla ži -- vo -- ta!      
na na na na na na sa sta -- bla ži -- vo -- ta

ma, što sve lju -- di ne bi da -- li  
sa -- mo da ku -- ša -- ju lju -- bav, mir...
a kad bi sa -- mo, sa -- mo zna -- li  
da bli -- zu je sta -- blo ra -- do -- sti!

mo -- ja je du -- ša bi -- la gla -- dna!
sad ku -- ša plod sa sta -- bla ži -- vo -- ta!
bo -- že, hva -- la, hva -- la ti...
bo -- že, hva -- la, hva -- la ti...
}

%tekstDva = \lyricmode {

%}


akordi = \chordmode {

}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
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
  \vspace #2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [8] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus }} \teeny \italic {(prima volta)} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse 2.} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { :21-24 } } }
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
