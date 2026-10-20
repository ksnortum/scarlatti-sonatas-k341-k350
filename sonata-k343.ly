%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A major"
  opus   = "K.343"
  source = "https://ks15.imslp.org/files/imglnks/usimg/b/b1/IMSLP914923-PMLP526375-E4490_20-22-Scarlatti_-_Keyboard_Sonatas,_L.286-300.pdf"
}

% TODO remove me
\paper {
  ragged-right = ##t
  ragged-last-bottom = ##t
  min-systems-per-page = #0
}

%
% Positions and shapes
%

rhMark = \markup { 
  \path #0.1 #'((moveto 0 0)(rlineto 0 -1.5)(rlineto 0.5 0))
}
lhMark = \markup { 
  \path #0.1 #'((moveto 0 0)(rlineto 0 1.5)(rlineto 0.5 0))
}

%
% Music
%

global = {
  \time 2/2
  \key a \major
  % TODO remove?
  % \set Staff.printKeyCancellation = ##f
  \override Timing.TimeSignature.style = #'numbered
  % \set Score.extraNatural = ##f
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    cs''8(\prall b cs d  \stemDown e cs a e |
    \stemNeutral fs8 d' gs, e' a,8-.) b'4( d,8) |
    cs8(\prall b cs d  \stemDown e cs a e |
    \stemNeutral fs8 d' gs, e'  a,8-.) b'4( d,8) |
    \stemDown cs4(\prall b8 a  b8) b'4( d,8) |
    cs4(\prall b8 a  b8) b'4( d,8) |
    \voiceOne a'4.( gs8) fs4.( e8) |
    d4.( cs8) b4.( a8) |
    
    \barNumberCheck 9
    \oneVoice gs8( a b4 \stemDown e,8) e'( d b |
    cs4 b  a8) a'( gs e |
    \voiceFour fs8) b,( a fs  gs4) as |
    s8 \voiceOne fs'4.~ fs8 e( ds cs |
    ds8) b'( a fs  gs4 as |
    b8) b( a! fs  gs4 as |
    b2~ b8) b( a! fs |
    gs4 fs8 ds) \oneVoice e4( ds8 b |
    
    \barNumberCheck 17
    cs8 ds e a,  gs fs e ds) | % TODO slurShape
    \voiceOne r4 b''4~  b8 a( g fs |
    e8) r b'4~  b8 a( g fs |
    e8 d c b  a g fs e |
    \oneVoice b'2~ b8) e( ds e |
    <b b'>2~ b'8) e,( ds e |
    <b b'>2~ b'8) e,( ds e |
    \voiceOne b'2~ b8) b( a fs) |
    
    \barNumberCheck 25
    gs!4( fs8 b) \oneVoice e,4( ds8 gs) |
    cs,4( b8 e)  a,4( gs |
    fs8-.) fs^( gs a \voiceOne b2~ |
    b8) cs( b a  gs fs e ds) |
    % First and second beat, slur, see measure 25
    gs'4( fs8 b) \oneVoice e,4( ds8 gs) |
    cs,4( b8 e)  a,4( gs |
    fs8-.) fs^( gs a \voiceOne b2~ |
    b8) cs( b a  gs fs e ds |
    
    \barNumberCheck 33
    \oneVoice e8) b''4( <ds, fs>8  <e gs>-.) b4( <ds, fs>8 |
    <e gs>8-.) b''4( <ds, fs>8  <e gs>-.) b4( <ds, fs>8) |
    e1-> |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*6 |
    \voiceFour cs''8( d e4)  fs,8( gs a4) |
    \set fingeringOrientations = #'(left)
    \csBracket d,8(\arpeggio <e\finger \rhMark> fs4)  b,8( cs d4) |
    
    \barNumberCheck 9
    s1*2 |
    s8 \voiceOne fs'4.~  fs8 e( ds cs |
    \voiceFour ds8) b( a! fs  gs4) as4( |
    b2~ b8) e( ds cs |
    ds4) b4~  b8 e( ds cs |
    ds8 e fs4) b,2 |
    b2 s |
    
    \barNumberCheck 17
    s1 |
    e,8 e'( d! b <c\finger \lhMark>2 |
    b8) <e\finger \rhMark>( d b <c\finger \lhMark>2 |
    b8) s2.. |
    s1*3 |
    b8 r r4 b2 |
    
    \barNumberCheck 25
    b2 s |
    s1 |
    s2 b8 b,( cs ds |
    \csBracket e2)\arpeggio s |
    b'2 s |
    s1 |
    s2 b8 b,( cs ds |
    \csBracket e2)\arpeggio s |
    
    \barNumberCheck 33
    s1*3 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \repeat volta 2 {
    a2.( cs4 |
    d4 e fs gs |
    a2.) cs,4( |
    d4 e fs gs) |
    a,8( a' gs fs  gs4 e) |
    a,8( a' gs fs  gs4 e) |
    \clef bass a,4( cs d cs |
    b4\arpeggio a gs fs |
    
    \barNumberCheck 9
    e8) e'( d b  cs4 b |
    a8) a'( gs e  fs4 e |
    d4 ds e cs |
    b4) ds( e cs |
    b4) ds( e cs |
    b4) ds( e cs) |
    
    
    \clef treble b8( b' a! fs)  gs,( gs' fs ds) |
    \clef bass e,8( e' ds b)  cs,( cs' b gs) |
    a,4 a'( b b, |
    e4) e'2( fs4 |
    g4) e2( fs4 |
    g4) e_( c2 |
    \clef treble 
    << 
      { 
        \voiceTwo b2~ b8) c( b a |
        b2~ b8) c( b a |
        b2~ b8) c( b a |
      } 
      \new Voice {
        \voiceThree b8( g' fs g a2~ |
        a8) g( fs g a2~ |
        a8) g( fs g a2) |
      } 
    >>
    \oneVoice b,8) b'( a fs  gs!4 fs) |
    
    \barNumberCheck 25
    \clef bass e,8( e' ds b)  cs,( cs' b gs) |
    a,8( a' gs e)  fs,( fs' e, e' |
    b4-.) b'2( a4 |
    gs4\arpeggio a b b,) |
    e8( e' ds b)  cs,( cs' b gs) |
    a,8( a' gs e)  fs,( fs' e, e' |
    b4-.) b'2( a4 |
    gs4\arpeggio a b b, |
    
    \barNumberCheck 33
    e4-.) b( e-.) b( |
    e4-.) b( e-.) b-. |
    e,1-> |
  }
}

dynamics = {
  % TODO remove
  % \override TextScript.Y-offset = #-0.5
  % \override Hairpin.after-line-breaking = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\mf |
    s1 |
    s1\p |
    s1 |
    s1\mf |
    s1\p |
    s1\mf |
    s1 |
    
    \barNumberCheck 9
    s1*8 |
    
    \barNumberCheck 17
    s1*3 |
    s8 s2..\> |
    s1\p |
    s1\cresc |
    s1 |
    s1\mf |
    
    \barNumberCheck 25
    s1*4 |
    s1\p |
    s1*3 |
    
    \barNumberCheck 33
    s1\cresc |
    s1 |
    s1\f |
  }
}

pedal = {
  % TODO None
}

tempi = {
  % TODO \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    \tempo "Allegro" 2 = 84
    s1*32 |
    
    \barNumberCheck 33
    s1 |
    s4 s s s |
    s1 |
  }
}

forceBreaks = {
  % page 1
  
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
