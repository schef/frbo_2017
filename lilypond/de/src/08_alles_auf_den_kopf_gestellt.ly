\version "2.19.49"

\include "s02_frbo.ily"

\header {
  title = "ALLES AUF DEN KOPF GESTELLT"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Matthäus 23,10–12"
  broj = "8"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Text und Musik: Frank Bosch | Matej 23,10–12 } }
}

\include "de_footer.ily"

\paper {
  \aFourL
  score-markup-spacing.padding = #5
    system-system-spacing.padding = #2.5

  last-bottom-spacing.padding = #0
  page-count = #1
}

%%http://lsr.di.unimi.it/LSR/Item?id=902

%=> http://lilypond.1069038.n5.nabble.com/parenthesize-groups-of-notes-td501.html
%LSR by Gilles Thibault
%I take the way of how works ParenthesesItem #'stencils from here
%http://lsr.di.unimi.it/LSR/Item?id=564
%It's probably possible to automate a bit more but that is the general idea.

startParenthesis = {
  \once \override ParenthesesItem.stencils = #(lambda (grob)
                                                (let ((par-list (parentheses-item::calc-parenthesis-stencils grob)))
                                                  (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override ParenthesesItem.stencils = #(lambda (grob)
                                                (let ((par-list (parentheses-item::calc-parenthesis-stencils grob)))
                                                  (list point-stencil (cadr par-list))))
} 

note = \relative c'' {
  \key d \major
  \time 4/4
  \partial 8*4
  a8 g fis e |
  \markMoj
  d4. a'8 ~ a4 e4 |
  r2 a8 g fis e |
  d4. a'8 ~ a4 e4 |
  r4 r8 a a g fis e |
  d4. a'8 ~ a4 h ~ |
  h4 h2 h4 |
  a4 fis8 g ~ g fis e4 |
  r2 a8 g fis e |
  d4. a'8 ~ a4 e4 |
  r2 a8 g fis e |
  d4. a'8 ~ a4 e4 |
  r2 a8 g fis e |
  d4. a'8 ~ a4 h |
  r4 h4 h8 h ~ h4 |
  a4 d,8 d ~ d e d4 |
  \override ParenthesesItem.font-size = #5
  r4
  \startParenthesis \breathemoj \parenthesize d4 d
  \endParenthesis \parenthesize a' |
  \markMoj
  a4 g g fis8 fis ~ |
  fis8 e ~ e4 a, g' |
  g4 fis fis8 e ~ e d |
  r2 r4 a | 
  fis'4 e8 e ~ e4 d |
  d2 e |
  d1 |
  r2 d4 a' |
  a4 g g fis8 fis ~ |
  fis8 e ~ e4 a, g' |
  g4 fis fis e8 d |
  r2 r4 a |
  fis'
  4 e8 e ~ e4 d |
  d2 e |
  d1 |
  r2 a'8 g fis e |
  \bar ":|."
}

tekst = \lyricmode {
  Al -- les auf den Kopf ge -- stellt, al -- les auf den Kopf ge -- stellt. 
  Es ist in Got -- tes Kö -- nig -- reich nicht so, wie in die -- ser Welt.
  Kin -- der kom -- men ganz groß raus. Stol -- ze ge -- hen dort leer aus,
  denn in Got -- tes neu -- er Welt ist al -- les auf den Kopf ge -- stellt.

  \set stanza = "1."
  _ Wer hier meint, er wär‘ der Grö -- ßte __ und ‚ne gro -- ße Klap -- pe hat,
  der ist viel -- leicht dort win -- zig klein.
  Wen man hier oft nicht be -- ach -- tet, __ weil er still und schüch -- tern ist,
  kann dort viel -- leicht ein Kö -- nig sein.
  
  Al -- les auf den
}

tekstDva = \lyricmode {
  \repeat unfold 58 {\skip 8}
  \set stanza = "2."
  Du brauchst nicht Schön -- heit und Be -- ga -- bung, 
  cool -- es Han -- dy und viel Geld, denn da -- rauf kommt´s doch gar nicht an. 
  Wenn du Je -- su Lie -- be an -- nimmst, sie an an -- de -- re ver -- schenkst, 
  kommst du in sei -- nem Reich voll an.
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  \skip 8*4
  d2 d4 a4 | a1 | h2.:m a4 | a1 |
  d1 | g | d2. a4 | a1 | d |
  a1 | h:m | a | d | g |
  d2 a | d1 | g | a:7/g | d |
  h1:m | g | a | d | h:m | g | a:7/g |
  d2 d4. h8:m | h1:m | g | a | d | d |

}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
    %\addlyrics { \tekstTri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 4 = 180 }
}

\markup {
  \vspace #0
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [20]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }     
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {outro [3]} }
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
