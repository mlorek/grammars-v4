/*
BSD License

Copyright (c) 2025, Tom Everett
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. Neither the name of Tom Everett nor the names of its contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

// $antlr-format alignTrailingComments true, columnLimit 150, minEmptyLines 1, maxEmptyLinesToKeep 1, reflowComments false, useTab false


// $antlr-format allowShortRulesOnASingleLine false, allowShortBlocksOnASingleLine true, alignSemicolons hanging, alignColons hanging

grammar sapf;

file_
   : line* EOF
   ;

line
   : expression+
   ;

expression
   : expression expression (TIMES | DIV | PLUS | MINUS)+
   | LPAREN expression+ RPAREN
   | (PLUS | MINUS)* atom
   ;

list
   : '#'? LBRACK expression+ RBRACK
   ;

form
   : LCURL (key | expression)+ RCURL ('=' word)?
   ;

key
   : ':' LITERAL
   ;

function
   : '\\' LITERAL* STRING? list ('=' word)?
   ;

atom
   : number
   | list
   | word
   | form
   | function
   ;

decimal
   : '-'? ((DIGITS '.' DIGITS) | (DIGITS '.') | ('.' DIGITS) | DIGITS)
   ;

scientific
   : decimal 'e' decimal
   ;

fraction
   : decimal '/' decimal
   ;

suffix
   : 'pi'
   | 'M'
   | 'k'
   | 'h'
   | 'c'
   | 'm'
   | 'u'
   ;

number
   : (scientific | decimal | fraction) suffix?
   ;

word
   : ('`' | '\'' | ',' | '.')? LITERAL
   ;

DIGITS
   : [0-9]+
   ;

LITERAL
   : [a-zA-Z_]+
   ;

STRING
   : '"' .*? '"'
   ;

EACH
   : '@'
   ;

LCURL
   : '{'
   ;

RCURL
   : '}'
   ;

LBRACK
   : '['
   ;

RBRACK
   : ']'
   ;

LPAREN
   : '('
   ;

RPAREN
   : ')'
   ;

PLUS
   : '+'
   ;

MINUS
   : '-'
   ;

TIMES
   : '*'
   ;

DIV
   : '/'
   ;

COMMENT
   : ';' ~ [\r\n]* -> skip
   ;

WS
   : [ \t\r\n]+ -> skip
   ;

