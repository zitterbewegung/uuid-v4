#lang scribble/manual

@(require scribble/eval
          racket/sandbox
          racket/runtime-path)

@(define uuid-path "uuid-v4.rkt")

@(define my-evaluator
   (call-with-trusted-sandbox-configuration 
    (lambda ()
      (parameterize ([sandbox-output 'string]
                     [sandbox-error-output 'string])
        (make-evaluator 'racket
	                #:requires
                        (list uuid-path))))))

@title{UUID v4}



@section{Functions URN, UUID}
@subsection{@racket[urn] Example} 

This is a thunk, no input is required. Also the the values that the
real returns is actually randomized and this is only an example of
what it will return.

@interaction[#:eval my-evaluator
                     (urn)
                     (urn)
                     (urn)
                   ]
@subsection{@racket[make-uuid] example}

Note this is a thunk, no input is required. Also the the values that
the real returns is actually randomized and this is only an example of
what it will return

@interaction[#:eval my-evaluator
                    (make-uuid)
                    (make-uuid)
                    (make-uuid)]




@section{License}
This code was derived from Gambit Scheme and is released under the LGPL.
@verbatim{
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
}