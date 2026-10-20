%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\language "english"

#(set-global-staff-size 18)

\header { 
  composer = "Domenico Scarlatti (1685-1757)"
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = \markup { 
    \center-column { \concat {
      "Copyright © 2026 " \with-url #"https://github.com/ksnortum" 
      "Knute Snortum." " Licensed under " 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "CC BY-SA 4.0"
    } }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = #5

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1))
    
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60))

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30))
    
  top-system-spacing.minimum-distance = #10
    
  #(set-paper-size "letter")

  two-sided = ##t
  inner-margin = 11\mm
  outer-margin = 9\mm
}

\layout {
  \context {
    \Score
    % \omit BarNumber
    \override Slur.details.free-head-distance = #0.75
    \override PhrasingSlur.details.free-head-distance = #0.75
    \override Stem.details.beamed-lengths = #'(3.5 3.9)
  }
  \context {
    \Voice
    \override Tie.minimum-length = #2.5
  }
  % Helps keep dynamics from intersecting the span bar line.
  \context { 
    \Dynamics
    \consists Pure_from_neighbor_engraver
    \remove Bar_engraver
  }
}

\midi {
  % Dynamics are mostly in the staff, not the voice
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }        
  \context {
    \Score
    midiMinimumVolume = #0.01
    midiMaximumVolume = #0.99
  }
}

%
% Definitions
%

% voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

% #(define-public (bracket-stencils grob)
%   (let ((lp (grob-interpret-markup grob (markup #:fontsize 3.5 #:translate (cons -0.3 -0.5) "[")))
%         (rp (grob-interpret-markup grob (markup #:fontsize 3.5 #:translate (cons -0.3 -0.5) "]"))))
%     (list lp rp)))
% 
% bracketify = #(define-music-function (arg) (ly:music?)
%    (_i "Tag @var{arg} to be parenthesized.")
% #{
%   \tweak Parentheses.stencils #bracket-stencils
%     \parenthesize $arg
% #})
% %% Usage:
% % \relative c'' { \bracketify c4 }

% #(define make-bracketed
%    (grob-transformer
%     'stencil
%     (lambda (grob orig)
%       (let* ((paren-stil (grob-interpret-markup
%                           grob 
%                           (markup #:musicglyph "accidentals.leftparen")))
%              (ext (ly:stencil-extent paren-stil Y))
%              (stil (ly:accidental-interface::print grob))
%              (thick (ly:output-def-lookup (ly:grob-layout grob)
%                                           'line-thickness 0.1))
%              (padding thick)
%              (protrusion (* 2.5 thick))
%              (lb (ly:bracket Y ext thick protrusion))
%              (rb (ly:bracket Y ext thick (- protrusion))))
%         (set! stil (ly:stencil-combine-at-edge stil X 1 rb padding))
%         (set! stil (ly:stencil-combine-at-edge stil X -1 lb padding))
%         stil))))
% 
% bracketAccidental = 
%   \tweak AccidentalCautionary.parenthesized ##f
%   \tweak AccidentalCautionary.stencil #make-bracketed \etc
% %% Usage:
% %% { <c'' \bracketAccidental es''? fis''>1 }

% makeSpanner = 
% #(define-music-function (mrkup) (markup?)
%   #{
%     \tweak bound-details.left.text \markup \large #mrkup
%     %\tweak bound-details.left.stencil-align-dir-y #0
%     \tweak bound-details.left-broken.text ##f
%     \startTextSpan
%   #})
% %% Usage:
% % rall = \makeSpanner \markup \large #"rall. "
% % stopRall = \stopTextSpan
% % \relative {
% %   c'4 c c_\rall c \break |
% %   c4 c\stopRall c c |
% % }
% rallSpan = \makeSpanner \markup \large #"rall. "
% stopRall = \stopTextSpan

addArticulation =
#(define-music-function (articul music) (symbol? ly:music?)
   (for-some-music
     (lambda (m)
       (if (or (music-is-of-type? m 'note-event)
               (music-is-of-type? m 'event-chord))
           (begin
             (ly:music-set-property!
               m
               'articulations
               (cons
                 (make-music 'ArticulationEvent 'articulation-type articul)
                 (ly:music-property m 'articulations)))
             #t)
           #f))
     music)
   music)
%% Usage:
% \addArticulation #'staccato { c' d' <e' f'> }

addStaccato =
#(define-music-function (music) (ly:music?)
  (addArticulation 'staccato music)) 
%% Usage:
% \addStaccato { c' d' <e' f'> }

% addTenuto =
% #(define-music-function (music) (ly:music?)
%   (addArticulation 'tenuto music)) 

% moveClefUnderAfterGrace = 
% \once \override Staff.Clef.X-extent =
%   #(lambda (grob)
%      (let* ((stc (ly:grob-property grob 'stencil))
%             (ext (ly:stencil-extent stc X)))
%        ; Add default BarLine extra-space to Clef (1.0)
%        (ly:grob-set-property! grob 'extra-offset (cons (- (1+ (cdr ext))) 0))
%        #f))

% ffStentatoMarkup = \markup { ff \normal-text \large \italic stentato }
% ffStentato = 
%   \tweak self-alignment-X LEFT
%   #(make-dynamic-script ffStentatoMarkup)

% #(define (expect-warning-times n . arg)
%    (for-each (lambda _ (apply ly:expect-warning arg))
%              (iota n)))
% % Usage: #(expect-warning-times 4 "omitting tuplet bracket")

% parenLeft =
% \once\override Parentheses.stencils =
% #(grob-transformer 'stencils
%                     (lambda (grob stils)
%                       (list (first stils) empty-stencil)))
% parenRight =
% \once\override Parentheses.stencils =
% #(grob-transformer 'stencils
%                     (lambda (grob stils)
%                       (list empty-stencil (second stils))))
% %%%%%% Example:
% % {
% %   \override Parentheses.font-size = #5
% %   \parenLeft <c \parenthesize c'>
% %   d' e' f'
% %   \parenRight \parenthesize g'
% % }

% staffStaffSpacing = 
% #(define-music-function (off dist) (number? number?)
%    #{
%       \once \override
%         Score
%         .NonMusicalPaperColumn
%         .line-break-system-details
%         = #`((Y-offset . ,off)
%              (alignment-distances . (,dist)))
%    #})

% pocoCrescMarkup = \markup \large \italic "poco cresc."
% pocoCresc =
%   #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
%                'span-text pocoCrescMarkup)
  
% dimERallMarkup = \markup \large \italic "dim. e rall."
% dimERall =
%   #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
%                'span-text dimERallMarkup)

% crescNoDotMarkup = \markup \large \italic cresc
% crescNoDot =
%   #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
%                'span-text crescNoDotMarkup)

% crescWOMarkup = \markup \large \italic \whiteout \pad-markup #0.25 cresc.
% crescWO =
%   #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
%                'span-text crescWOMarkup)

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd  = \sustainOn
su  = \sustainOff
sud = \sustainOff\sustainOn

voiceUp = {
  \change Staff = "upper"
  \voiceFour 
}
voiceDown = {
  \change Staff = "lower"
  \voiceThree 
}
oneVoiceUp = {
  \change Staff = "upper"
  \oneVoice
}

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}
tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}
% tupletNumberOn = \undo \omit TupletNumber

% Offset slur positions
osp =
#(define-music-function (offsets) (number-pair?)
  #{
     \once \override Slur.control-points =
       #(lambda (grob)
          (match-let ((((_ . y1) _ _ (_ . y2))
                       (ly:slur::calc-control-points grob))
                      ((off1 . off2) offsets))
            (set! (ly:grob-property grob 'positions)
                  (cons (+ y1 off1) (+ y2 off2)))
            (ly:slur::calc-control-points grob)))
  #})
%% Usage:
%
% \relative c'' {
%   \osp #'(0 . 2)
%   c4( c, d2)
% }

% moveLeftParen = 
% #(define-music-function (offset) (number?)
%   #{
%     \once \override Parentheses.stencils =
%       #(grob-transformer 'stencils
%         (lambda (grob orig)
%           (cons (ly:stencil-translate-axis (car orig) offset X) (cdr orig))))
%   #})
%% Usage: \moveLeftParen #-1.25 \parenthesize e4

% beamEighths.24 = \set Timing.beamExceptions = \beamExceptions { 
%   8[ 8 8 8] |
%   16[ 16 16 16] 16[ 16 16 16] |
%   \tuplet 3/2 { 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] }
% }
% beamTriplets.38 = \set Timing.beamExceptions = \beamExceptions {
%    8[ 8 8] | \tuplet 3/2 { 16[ 16 16]  16[ 16 16]  16[ 16 16] }
% }
% beamTriplets.22 = \set Timing.beamExceptions = \beamExceptions {
%    8[ 8 8 8] 8[ 8 8 8] | 
%    \tuplet 3/2 { 8[ 8 8]  8[ 8 8]  8[ 8 8]  8[ 8 8] } |
%    16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16]
% }
% beamTripletsOnly.22 = \set Timing.beamExceptions = \beamExceptions {
%    \tuplet 3/2 { 8[ 8 8]  8[ 8 8]  8[ 8 8]  8[ 8 8] }
% }
% beamEighths.22 = \set Timing.beamExceptions = \beamExceptions {
%   8[ 8 8 8] 8[ 8 8 8] | 
%   16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] |
% }
% beamTripletsHalfNote.44 = \set Staff.beamExceptions = \beamExceptions {
%   \tuplet 3/2 { 8[ 8 8 8 8 8] 8[ 8 8 8 8 8] }
% }
% beamEights.44 = \set Timing.beamExceptions = \beamExceptions {
%   8[ 8 8 8] 8[ 8 8 8]
% }
% beamThirtySeconds.38 = \set Timing.beamExceptions = \beamExceptions {
%   8[ 8 8] | 16[ 16 16 16 16 16] |
%   32[ 32 32 32] 32[ 32 32 32] 32[ 32 32 32]
% }
% beamEights.34 = \set Timing.beamExceptions = \beamExceptions {
%   8[ 8 8 8 8 8] | 
%   16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16]
% }
% revertBeaming = \unset Timing.beamExceptions

% % Subdivide beams
% % e.g.: a32 \sdb #2 b a b
% sdb = #(define-music-function
%    (n m)
%    (integer? ly:music?)
%    #{ 
%      \set stemRightBeamCount = #n
%      #m
%      \set stemLeftBeamCount = #n
%    #})

% % Subdivide beams, define both sides
% % e.g.: a32 \sdbII #2 #1 b a b
% sdbII = #(define-music-function
%    (x y m)
%    (integer? integer? ly:music?)
%    #{ 
%      \set stemRightBeamCount = #x
%      #m
%      \set stemLeftBeamCount = #y
%    #})

% strictSpacingOn = {
%   \override Score.SpacingSpanner.strict-note-spacing = ##t
%   \newSpacingSection
% }
% strictSpacingOff = {
%   \override Score.SpacingSpanner.strict-note-spacing = ##f
%   \newSpacingSection
% }

% accidentalOverTrill = \once {
%   \override TextScript.script-priority = -50
%   \override Script.script-priority = -100
% }

% trillBelow = \tweak Script.script-priority #-100 \etc
% trillAbove = \tweak outside-staff-priority #9999 \etc
% insideSlur = \tweak avoid-slur #'inside \etc
% outsideSlur = \tweak avoid-slur #'outside \etc
% noPriority = \tweak outside-staff-priority ##f \etc
% graceSpacing = \once \override Score.GraceSpacing.spacing-increment = 0
csBracket = 
  \once \override PianoStaff.Arpeggio.stencil = #ly:chord-bracket::print
% \defineBarLine "!!" #'(#f #f #t)
% \defineBarLine "||.|:" #'("||" ".|:" #t)
% \defineBarLine "!|" #'("!|" ".|:" "!|") 
% positioningDone = \once \override TieColumn.positioning-done = ##t
noDot = \tweak Dots.stencil ##f \etc

% clefAfterBarLine = 
% \once \override Score.BreakAlignment.break-align-orders = 
%     #(make-vector 3 '(staff-bar clef key-signature))

% keyAndTimeBeforeBarLine = 
% \once \override Score.BreakAlignment.break-align-orders = 
%     #(make-vector 3 '(key-cancellation key-signature time-signature staff-bar))

% keyBeforeBarLine = 
% \once \override Score.BreakAlignment.break-align-orders = 
%     #(make-vector 3 '(key-cancellation key-signature staff-bar))

% clefAfterBarLine = 
% \once \override Score.BreakAlignment.break-align-orders = 
%     #(make-vector 3 '(staff-bar key-cancellation key-signature clef))

% timeBeforeBarLine = 
% \once \override Score.BreakAlignment.break-align-orders = 
%     #(make-vector 3 '(time-signature staff-bar))
    
% keyThenClefAtEndOfLine = {
%   \breakAlignInsert #end-of-line-visible clef after key-signature
%   % The following line isn't strictly needed, but it avoids a warning
%   \override Staff.KeySignature.space-alist.clef = #'(extra-space . 1)
% }

% clefThenBarAtEndOfLine =
%   \breakAlignInsert #end-of-line-visible clef before staff-bar
  
% clefAfterBarAtEndOfLine =
%   \breakAlignInsert #end-of-line-visible clef after staff-bar

% keyThenBarAtEndOfLine = 
%   \breakAlignInsert #end-of-line-visible key-signature before staff-bar
  
% clefThenKeyAtBeginOfLine = 
%   \breakAlignInsert #begin-of-line-visible key-signature after clef

% timeSigBeginOfBarOnly = 
%   \once \override Score.TimeSignature.break-visibility = #begin-of-line-visible

% timeOnlyAfterBreak = 
% \once \override Score.BreakAlignment.break-align-orders = 
% ##((left-edge
%     staff-ellipsis
%     cue-end-clef
%     ambitus
%     breathing-sign
%     signum-repetitionis
%     clef
%     cue-clef
%     staff-bar
%     key-cancellation
%     key-signature
%     ;time-signature
%     custos)
%   (left-edge
%     staff-ellipsis
%     cue-end-clef
%     ambitus
%     breathing-sign
%     signum-repetitionis
%     clef
%     cue-clef
%     staff-bar
%     key-cancellation
%     key-signature
%     ;time-signature
%     custos)
%   (left-edge
%     staff-ellipsis
%     ambitus
%     breathing-sign
%     signum-repetitionis
%     clef
%     key-cancellation
%     key-signature
%     time-signature
%     staff-bar
%     cue-clef
%     custos))

%
% Markup
%

% trillNatural = \markup \teeny \concat { " " \natural }
% trillFlat = \markup \teeny \concat { " " \flat }
% trillFlatParen = \markup \teeny \concat { "(" \flat ")" }
% trillSharp = \markup \teeny \concat { " " \sharp }
% md = \markup \italic \halign #-0.4 m.d.
% ms = \markup \italic \halign #-0.4 m.s.
% md = \markup \italic m.d.
% ms = \markup \italic m.s.
% crescMarkup = \markup \large \italic cresc.
% dimMarkup = \markup \large \italic dim.
% pesante = \markup \large \italic pesante
% espressivo = \markup \large \italic espressivo
% rallAPocoAPoco = 
%   \markup \large \italic \whiteout \pad-markup #0.25 "rall. a poco a poco"
% poco = \markup \large \italic poco
% sostenuto = \markup \large \italic sostenuto
% pocoSostenuto = 
%   \markup \large \italic \whiteout \pad-markup #0.25 "poco sostenuto"
% unPocoSostenuto = 
%   \markup \large \italic \whiteout \pad-markup #0.25 "un poco sostenuto"
% rall = \markup \large \italic rall.
% rit = \markup \large \italic rit.
% pocoRit = \markup \large \italic "poco rit."
% moltoRit = \markup \large \italic "molto rit."
% pocoRitWO = \markup \large \italic \whiteout \pad-markup #0.25 "poco rit."
% unPocoRall = \markup \large \italic "un poco rall."
% pocoStent = \markup \large \italic "poco stent."
% pocoRall = \markup \large \italic "poco rall."
% aTempo = \markup \large \italic "a tempo"
% rinForzandoERall = \markup \large \italic "rinforzando e rall."
% accelerando = \markup \large \italic accelerando
% pocoStent = \markup \large \italic "poco stent."
% nonLegato = \markup \large \italic "non legato"
% pocoMenoMosso = 
%   \markup \large \italic \whiteout \pad-markup #0.25 "poco meno mosso"
% pesante = \markup \large \italic pesante
% sempreF = \markup { \large \italic sempre \dynamic f }
% sempreP = \markup { \large \italic sempre \dynamic p }
% scherzando = \markup \large\italic scherzando
% sfMarkup = \markup \dynamic sf
% ppMarkup = \markup \dynamic pp
% mfWO = \markup \whiteout \pad-markup #0.25 \dynamic mf
% mfMarkup = \markup \dynamic mf
