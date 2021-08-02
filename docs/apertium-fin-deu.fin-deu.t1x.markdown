
# apertium-deu-fin: Finnish–German rules for rule-based machine translation

This is a visualisation of some rules in apertium transfer.


## Categories (parts of chunks)
   
These are the categories Apertium is using in order to chunk, re-order and
transfer lexemes.
    
| Category | Items |
|:---------|:------|
| noun |  `<n.*>`  `<np.*>`  |
| adj |  `<adj.*>`  |
| num |  `<num.*>`  |
| negverb |  `<vaux.neg.*>`  `<vblex.neg.*>`  |
| verb |  `<vblex.*>`  `<vaux.*>`  `<vbmod.*>`  `<vbser.*>`  |
| someprn |  `<prn.rel.*>`  `<prn.dem.*>`  `<det.def.*>`  |
| inf |  `<vblex.*.infa.*>`  `<vaux.*.infa.*>`  `<vbmod.*.infa.*>`  `<vbser.*.infa.*>`  `<vblex.*.infma.*>`  `<vaux.*.infma.*>`  `<vbmod.*.infma.*>`  `<vbser.*.infma.*>`  |
| pastverb |  `<vblex.*.past.*>`  `<vaux.*.past.*>`  `<vbmod.*.past.*>`  `<vbser.*.past.*>`  |
| sent |  `<sent>`  |

    
## Attributes

These are the morphological analysis value (tag) sets that can be processed in
the transfer.

| Attribute set name | Tags |
|:-------------------|:-----|
| a_case | `<nom>` `<ine>` `<ela>` `<ill>` `<ade>` `<abl>` `<all>` `<par>` `<gen>` `<acc>` `<tra>` `<lat>` `<ess>` `<dat>`  |
| a_noun | `<n>` `<np>` `<n.abbr>` `<n.acr>` `<np.abbr>` `<np.acr>`  |
| a_prn | `<prn>` `<prn.dem>` `<prn.rel>` `<det.def>`  |
| a_adj | `<adj>`  |
| a_num | `<num>`  |
| a_gender | `<m>` `<f>` `<nt>` `<mf>`  |
| a_number | `<sg>` `<pl>` `<sp>`  |
| a_verb | `<vblex>` `<vblex.neg>` `<vblex.sep>` `<vaux>` `<vbser>` `<vbmod>`  |
| a_voice | `<actv>` `<pasv>`  |
| a_tense | `<pri>` `<pii>` `<ifi>` `<pres>` `<past>`  |
| a_prsnum | `<p1.sg>` `<p2.sg>` `<p3.sg>` `<p1.pl>` `<p2.pl>` `<p3.pl>`  |

    
## Macros

Macros are helper functions in apertium transfer files.



### test

Parametres: 1

1. **let** `$number` ≔ ""

### num-mangler

Parametres: 1


1. **if** `sl[1]['lem']`  ≟ "yksi" **then**:
  1. **let** `tl[1]['a_number']`  ≔ `<sg>`
1. **else**:
  1. **let** `tl[1]['a_number']`  ≔ `<pl>`

### case-mangler

Parametres: 1


1. **if** `sl[1]['a_case']`  ≟ `<ela>``sl[1]['a_case']`  ≟ `<ill>``sl[1]['a_case']`  ≟ `<abl>``sl[1]['a_case']`  ≟ `<all>``sl[1]['a_case']`  ≟ `<par>``sl[1]['a_case']`  ≟ `<acc>` **then**:
  1. **let** `tl[1]['a_case']`  ≔ `<acc>`
1. **elseif** `sl[1]['a_case']`  ≟ `<ine>``sl[1]['a_case']`  ≟ `<ade>` **then**:
  1. **let** `tl[1]['a_case']`  ≔ `<dat>`
1. **elseif** `sl[1]['a_case']`  ≟ `<ins>``sl[1]['a_case']`  ≟ `<tra>``sl[1]['a_case']`  ≟ `<ess>` **then**:
  1. **let** `tl[1]['a_case']`  ≔ `<nom>`

### tensemood-mangler

Parametres: 1


1. **if** `sl[1]['a_tense']`  ≟ `<past>` **then**:
  1. **let** `tl[1]['a_tense']`  ≔ `<pii>`
1. **elseif** `sl[1]['a_tense']`  ≟ `<pri>` **then**:
  1. **let** `tl[1]['a_tense']`  ≔ `<pri>`

## Rules
    
The actual rules concerning stuff.



### negverb neg: find persnum and fix
    
#### Matching pattern:
    

1. negverb
1. verb

#### Action:
    

1. tensemood-mangler($1)
1. Output: 
  1. vp``<VP>``
    1. `tl[2]['lem']` `tl[2]['a_verb']` `tl[2]['a_tense']` `tl[1]['a_prsnum']` 
    1. `blank`1
    1. "nicht"`<adv>`
    

### Compose syntactic past form
    
#### Matching pattern:
    

1. pastverb

#### Action:
    

1. tensemood-mangler($1)
1. Output: 
  1. vp``<VP.PAST>``
    1. "haben"`<vbhaver.pri>``tl[1]['a_prsnum']` 
    1. `blank`0
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<pp>`
    

### Map infs sto inf
    
#### Matching pattern:
    

1. inf

#### Action:
    

1. tensemood-mangler($1)
1. Output: 
  1. vp``<VP>``
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<inf>`
    

### Drop voice from verbs, mangle tense mood
    
#### Matching pattern:
    

1. verb

#### Action:
    

1. tensemood-mangler($1)
1. Output: 
  1. vp``<VP>``
    1. `tl[1]['lem']` `tl[1]['a_verb']` `tl[1]['a_tense']` `tl[1]['a_prsnum']` 
    

### Mangle case of some prns but not all
    
#### Matching pattern:
    

1. someprn

#### Action:
    

1. case-mangler($1)
1. Output: 
  1. np``<NP>``
    1. `tl[1]['lem']` `tl[1]['a_prn']` `tl[1]['a_gender']` `tl[1]['a_number']` `tl[1]['a_case']` 
    

### Mangle case of nouns
    
#### Matching pattern:
    

1. noun

#### Action:
    

1. case-mangler($1)
1. Output: 
  1. np``<NP>``
    1. `tl[1]['lem']` `tl[1]['a_noun']` `tl[1]['a_gender']` `tl[1]['a_number']` `tl[1]['a_case']` 
    

### Mangle case of adjs
    
#### Matching pattern:
    

1. adj

#### Action:
    

1. case-mangler($1)
1. Output: 
  1. np``<AP>``
    1. `tl[1]['lem']` `tl[1]['a_adj']` `<sint.attr>`
    

### Drop case, mangle num of nums... German is weirdly tagged
    
#### Matching pattern:
    

1. num

#### Action:
    

1. num-mangler($1)
1. Output: 
  1. nump``<NumP>``
    1. `tl[1]['lem']` `tl[1]['a_num']` `tl[1]['a_number']` 
    

### Default rule
    
#### Matching pattern:
    

1. sent

#### Action:
    

1. Output: 
  1. sent``<SENT>``
    1. `tl[1]['whole']` 
    

- - -

Documentation for [apertium-deu-fin](//github.com/apertium/apertium-deu-fin/).
Generated with [Flammie’s apevis-xslt](https://github.com/flammie/apevis-xslt).
  