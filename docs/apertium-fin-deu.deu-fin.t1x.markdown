
# apertium-fin-deu: Finnish–German rules for rule-based machine translation

This is a visualisation of some rules in apertium transfer.


## Categories (parts of chunks)
   
These are the categories Apertium is using in order to chunk, re-order and
transfer lexemes.
    
| Category | Items |
|:---------|:------|
| desomalieren2np | somalieren `<vblex.*>`  |
| deadp2np | de `<pr.*>`  |
| dest2np | st. `<abbr>`  |
| soviele2np | so viele `<det.*>`  |
| ex2np | ex `<adv>`  |
| nochein2np | noch ein `<det.*>`  |
| directionlich_pr | östlich `<pr.*>` südlich `<pr.*>`  |
| um | um `<cnjsub>` um `<pr.*>` um `<pr.acc>`  |
| seit | seit `<pr.*>` seit `<pr.dat>` seit `<cnjsub>`  |
| bevor | bevor `<preadv>`  |
| an | an `<pr.*>` an `<pr.dat>`  |
| dem | der `<det.def.*>`  |
| ab | ab `<adv>` ab `<pr.*>`  |
| bis | bis `<cnjsub>` bis `<pr.*>`  |
| gegen | gegen `<pr.*>` gegen `<pr.acc>`  |
| uhr | Uhr `<n.*>` uhr `<n.*>`  |
| über | über `<pr.*>` über `<adv>`  |
| nach | nach `<pr.*>` nach `<adv>` nach `<pprep.*>`  |
| hinweg | hinweg `<adv>`  |
| leben | Leben `<n.nt.*>` leben `<n.nt.*>`  |
| gekommen | kommen `<vblex.pp>`  |
| monat | Januar `<n.*>` Februar `<n.*>` März `<n.*>` April `<n.*>` Mai `<np.*>` mai `<n.*>` Juni `<n.*>` Juli `<n.*>` August `<n.*>` September `<n.*>` Oktober `<n.*>` November `<n.*>` Dezember `<n.*>` januar `<n.*>` februar `<n.*>` märz `<n.*>` april `<n.*>` mai `<np.*>` juni `<n.*>` juli `<n.*>` august `<n.*>` september `<n.*>` oktober `<n.*>` november `<n.*>` dezember `<n.*>`  |
| zeitwort | Jahr `<n.*>` Jahrzehnt `<n.*>` jahr `<n.*>` jahrzehnt `<n.*>`  |
| informationwort | Angabe `<n.*>` Ansicht `<n.*>` angabe `<n.*>` ansicht `<n.*>`  |
| weder_cc | weder `<cnjcoo>`  |
| noch_cc | noch `<cnjcoo>` noch `<adv>`  |
| werden | werden `<vaux.*>` werden `<vblex.*>`  |
| als | als `<adv>` als `<cnjadv>`  |
| wie | wie `<adv>` wie `<adv.itg>`  |
| gehen | gehen `<vblex.pri.p2.pl>` gehen `<vblex.pri.p3.sg>` gehen `<vblex.prs.p3.sg>`  |
| es | es `<prn.pers.p3.nt.sg.*>` prpers `<prn.*.p3.nt.sg.*>`  |
| kein | kein `<det.ind.*>`  |
| daynumber |  `<num.ord>`  |
| noun |  `<n.*>`  `<np.*>`  |
| abbr |  `<abbr>`  `<n.abbr>`  |
| cmp |  `<n.cmp>`  `<n.cmp.*>`  `<n.*.cmp>`  `<n.*.cmp.*>`  `<atp.cmp>`  `<atp.*.cmp>`  |
| prn |  `<prn.*>`  |
| prnpers |  `<prn.pers.*>`  |
| prndem |  `<prn.dem.*>`  |
| np |  `<np.*>`  |
| nominal |  `<n.*>`  `<np.*>`  `<prn.pers.*>`  |
| verbnegation | nicht `<adv>` kein `<adv>`  |
| infinite |  `<vblex.inf>`  `<vblex.ger.*>`  `<vaux.inf>`  `<vbser.inf>`  `<vbhaver.inf>`  |
| perfection |  `<vblex.*.pp>`  `<vblex.pp>`  |
| participle |  `<vblex.*.pp>`  `<vblex.pp>`  |
| haver |  `<vbhaver.*>`  |
| adj |  `<adj.*>`  |
| adjvl |  `<adj.*>`  `<vblex.*.pp>`  |
| adp |  `<post.*>`  `<pr.*>`  `<post>`  `<pr>`  |
| poss |  `<det.pos.*>`  |
| art | der `<det.*>` ein `<det.*>`  |
| det |  `<det.*>`  |
| cardinal |  `<num.card>`  `<num.card.*>`  `<num.pl.*>`  `<num>`  |
| plural |  `<n.*.pl.*>`  `<np.*.pl.*>`  `<prn.*.pl.*>`  |
| num |  `<num.*>`  `<num>`  |
| multiplier |  `<num.card>`  `<num.card.*>`  `<num.pl.*>`  `<num>` Milliarde `<n.*>` Hundert `<n.*>`  |
| verb |  `<vblex.*>`  `<vbser.*>`  `<vbmod.*>`  `<vaux.*>`  `<vbhaver.*>`  |
| auxiliary |  `<vbmod.*>`  `<vaux.*>`  |
| cnjcoo |  `<cnjcoo>`  |
| comma | , `<cm>`  |
| sent |  `<sent>`  |

    
## Attributes

These are the morphological analysis value (tag) sets that can be processed in
the transfer.

| Attribute set name | Tags |
|:-------------------|:-----|
| a_case | `<nom>` `<gen>` `<acc>` `<dat>` `<ine>` `<ela>` `<ill>` `<ade>` `<abl>` `<all>` `<par>` `<tra>` `<cmp>` `<lat>`  |
| a_verb | `<vblex>` `<vblex.neg>` `<vbser>` `<vbmod>` `<vaux>`  |
| a_tense | `<prs>` `<pis>` `<pri>` `<pii>` `<past>`  |
| a_adj | `<adj>` `<num.ord>`  |
| a_comp | `<pos>` `<comp>` `<sup>`  |
| a_adp | `<post>` `<pr>`  |
| a_adv | `<adv>`  |
| a_noun | `<n>` `<n.acr>` `<n.abbr>` `<n.compound-only-L>` `<det>` `<np.ant.m>` `<np.ant.f>` `<np.ant>` `<np.top>` `<np.top.use_blacklist>` `<np.al>` `<np>` `<np.acr>` `<np.acr.al>` `<np.top.acr>` `<np.al.acr>` `<np.org>` `<np.cog>` `<num.card>` `<prn>`  |
| a_nominal | `<n.acr>` `<n.cmp>` `<n.compound-only-L>` `<n>` `<np.ant.m>` `<np.ant.f>` `<np.ant>` `<np.top>` `<np.top.use_blacklist>` `<np.cog>` `<np.org>` `<np.al>` `<np>` `<np.acr>` `<np.acr.al>` `<np.top.acr>` `<np.al.acr>` `<num.card>` `<det>` `<prn>` `<adj.pos>`  |
| a_det | `<n>` `<num.card>` `<det>` `<prn>` `<adj.pos>` `<adv>`  |
| a_prn | `<prn>`  |
| a_number | `<sg>` `<sp>` `<pl>`  |
| a_perf | `<pp>`  |
| a_pers | `<p1.sg>` `<p2.sg>` `<p3.sg>` `<p1.pl>` `<p2.pl>` `<p3.pl>`  |
| a_numtype | `<card>` `<nocard>` `<ord>`  |
| a_num | `<num>` `<num.use_nonstd>`  |
| a_inf | `<inf>` `<infa>` `<infe>` `<infma>` `<ger>`  |
| a_conneg | `<conneg>`  |

    
## Macros

Macros are helper functions in apertium transfer files.



### test

Parametres: 1

1. **let** `$number` ≔ ""

### comparison-mangler

Parametres: 1


1. **if** `tl[1]['a_adj']`  ≟ `<num.ord>` **then**:
  1. **let** `$comparison` ≔ ""
1. **elseif** `sl[1]['a_comp']`  ≟ `<comp>` **then**:
  1. **let** `$comparison` ≔ `<com>`
1. **elseif** `sl[1]['a_comp']`  ≟ `<sup>` **then**:
  1. **let** `$comparison` ≔ `<sup>`
1. **else**:
  1. **let** `$comparison` ≔ `<pos>`

### voice-mangler

Parametres: 1


1. **if** `tl[1]['a_voice']`  ≟ `<actv>` **then**:
  1. **let** `$voice` ≔ `<actv>`
1. **elseif** `tl[1]['a_voice']`  ≟ `<pasv>` **then**:
  1. **let** `$voice` ≔ `<pasv>`
1. **else**:
  1. **let** `$voice` ≔ `<actv>`

### number-mangler

Parametres: 1


1. **if** `tl[1]['a_number']`  ≟ `<sp>``tl[1]['a_case']`  ≟ `<nom>``tl[1]['lem']`  ≟ "kaikki" **then**:
  1. **let** `$number` ≔ `<sp>`
1. **elseif** `tl[1]['a_number']`  ≟ `<sp>``tl[1]['a_case']`  ≟ `<gen>``tl[1]['lem']`  ≟ "mikä" **then**:
  1. **let** `$number` ≔ `<sp>`
1. **elseif** `tl[1]['lem']`  ≟ "koko" **then**:
  1. **let** `$number` ≔ ""
1. **elseif** `$tense` ≟ `<pri>``tl[1]['a_conneg']`  ≟ `<conneg>` **then**:
  1. **let** `$number` ≔ ""
1. **elseif** `tl[1]['a_nominal']`  ≟ `<n.compound-only-L>` **then**:
  1. **let** `$number` ≔ ""
1. **elseif** `tl[1]['a_number']`  ≟ `<sg>` **then**:
  1. **let** `$number` ≔ `<sg>`
1. **elseif** `tl[1]['a_number']`  ≟ `<pl>` **then**:
  1. **let** `$number` ≔ `<pl>`
1. **else**:
  1. **let** `$number` ≔ `<sg>`

### numtype-mangler

Parametres: 1


1. **if** `sl[1]['a_numtype']`  ≟ `<card>` **then**:
  1. **let** `$numtype` ≔ `<card>`
1. **elseif** `sl[1]['a_numtype']`  ≟ `<ord>` **then**:
  1. **let** `$numtype` ≔ `<adj.ord>`
1. **elseif** `tl[1]['a_numtype']`  ≟ `<nocard>` **then**:
  1. **let** `$numtype` ≔ ""
1. **else**:
  1. **let** `$numtype` ≔ `<card>`

### tensemood-mangler

Parametres: 1


1. **if** `tl[1]['lem']`  ≟ "ei" **then**:
  1. **let** `$tense` ≔ ""
1. **elseif** `sl[1]['a_tense']`  ≟ `<pii>` **then**:
  1. **let** `$tense` ≔ `<past>`
1. **elseif** `sl[1]['a_tense']`  ≟ `<prs>` **then**:
  1. **let** `$tense` ≔ `<pri>`
1. **elseif** `sl[1]['a_tense']`  ≟ `<pis>` **then**:
  1. **let** `$tense` ≔ `<pri>`
1. **elseif** `sl[1]['a_tense']`  ≟ `<past>` **then**:
  1. **let** `$tense` ≔ `<past>`
1. **else**:
  1. **let** `$tense` ≔ `<pri>`

### pers-mangler

Parametres: 1


1. **if** `sl[1]['a_pers']`  ≟ `<p1.sg>` **then**:
  1. **let** `$pers` ≔ `<p1.sg>`
1. **elseif** `sl[1]['a_pers']`  ≟ `<p2.sg>` **then**:
  1. **let** `$pers` ≔ `<p2.sg>`
1. **elseif** `sl[1]['a_pers']`  ≟ `<p3.sg>` **then**:
  1. **let** `$pers` ≔ `<p3.sg>`
1. **elseif** `sl[1]['a_pers']`  ≟ `<p1.pl>` **then**:
  1. **let** `$pers` ≔ `<p1.pl>`
1. **elseif** `sl[1]['a_pers']`  ≟ `<p2.pl>` **then**:
  1. **let** `$pers` ≔ `<p2.pl>`
1. **elseif** `sl[1]['a_pers']`  ≟ `<p3.pl>` **then**:
  1. **let** `$pers` ≔ `<p3.pl>`
1. **else**:
  1. **let** `$pers` ≔ `<p3.sg>`

### case-mangler

Parametres: 1


1. **if** `tl[1]['lem']`  ≟ "koko" **then**:
  1. **let** `$case` ≔ ""
1. **elseif** `tl[1]['a_nominal']`  ≟ `<n.compound-only-L>` **then**:
  1. **let** `$case` ≔ ""
1. **elseif** `sl[1]['a_case']`  ≟ `<acc>` **then**:
  1. **let** `tl[1]['a_case']`  ≔ `<gen>`1. **let** `$case` ≔ `<gen>`
1. **elseif** `sl[1]['a_case']`  ≟ `<dat>` **then**:
  1. **let** `tl[1]['a_case']`  ≔ `<gen>`1. **let** `$case` ≔ `<gen>`
1. **elseif** `sl[1]['a_case']`  ≟ `<cmp>` **then**:
  1. **let** `tl[1]['a_case']`  ≔ `<nom>`1. **let** `$case` ≔ `<nom>`
1. **elseif** `sl[1]['a_case']`  ≟ `<gen>` **then**:
  1. **let** `tl[1]['a_case']`  ≔ `<gen>`1. **let** `$case` ≔ `<gen>`
1. **elseif** `sl[1]['a_case']`  ≟ "" **then**:
  1. **let** `tl[1]['a_case']`  ≔ `<nom>`1. **let** `$case` ≔ `<nom>`
1. **else**:
  1. **let** `tl[1]['a_case']`  ≔ `<nom>`1. **let** `$case` ≔ `<nom>`

### infinite-mangler

Parametres: 1


1. **if** `sl[1]['a_inf']`  ≟ `<inf>` **then**:
  1. **let** `tl[1]['a_inf']`  ≔ `<infa>`1. **let** `$case` ≔ `<lat>`
1. **elseif** `sl[1]['a_inf']`  ≟ `<ger>` **then**:
  1. **let** `tl[1]['a_inf']`  ≔ `<infma>`1. **let** `$case` ≔ `<ine>`

### possessive-mangler

Parametres: 1


1. **if** `sl[1]['lem']`  ≟ "mein" **then**:
  1. **let** `$prnmaybe` ≔ ""1. **let** `$poss` ≔ `<pxsg1>`
1. **elseif** `sl[1]['lem']`  ≟ "dein" **then**:
  1. **let** `$poss` ≔ `<pxsg2>`1. **let** `$prnmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "eure" **then**:
  1. **let** `$poss` ≔ `<pxsg2>`1. **let** `$prnmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "unser" **then**:
  1. **let** `$poss` ≔ `<pxsg1>`1. **let** `$prnmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "sein" **then**:
  1. **let** `$poss` ≔ `<pxsp3>`1. **let** `$prnmaybe` ≔ "hän"`<prn.pers.sg.gen>`
1. **else**:
  1. **let** `$poss` ≔ `<pxsp3>`1. **let** `$prnmaybe` ≔ `tl[1]['whole']` 

### adp-mangler

Parametres: 1


1. **if** `sl[1]['lem']`  ≟ "in"`sl[1]['a_case']`  ≟ `<dat>` **then**:
  1. **let** `$adpmaybe` ≔ ""1. **let** `$adpcase` ≔ `<ine>`
1. **elseif** `sl[1]['lem']`  ≟ "ab"`sl[1]['a_case']`  ≟ `<dat>` **then**:
  1. **let** `$adpmaybe` ≔ ""1. **let** `$adpcase` ≔ `<abl>`
1. **elseif** `sl[1]['lem']`  ≟ "in"`sl[1]['a_case']`  ≟ `<acc>` **then**:
  1. **let** `$adpmaybe` ≔ ""1. **let** `$adpcase` ≔ `<ill>`
1. **elseif** `sl[1]['lem']`  ≟ "auf" **then**:
  1. **let** `$adpcase` ≔ `<ine>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "um" **then**:
  1. **let** `$adpcase` ≔ `<abl>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "aus" **then**:
  1. **let** `$adpcase` ≔ `<ela>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "über" **then**:
  1. **let** `$adpcase` ≔ `<ela>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "bei" **then**:
  1. **let** `$adpcase` ≔ `<ade>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "von" **then**:
  1. **let** `$adpcase` ≔ `<abl>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "bis" **then**:
  1. **let** `$adpcase` ≔ `<ill>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "als" **then**:
  1. **let** `$adpcase` ≔ `<ess>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "mit" **then**:
  1. **let** `$adpcase` ≔ `<ade>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "zu" **then**:
  1. **let** `$adpcase` ≔ `<tra>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "an" **then**:
  1. **let** `$adpcase` ≔ `<abl>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "nach" **then**:
  1. **let** `$adpcase` ≔ `<ill>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "ohne" **then**:
  1. **let** `$adpcase` ≔ `<abe>`1. **let** `$adpmaybe` ≔ ""
1. **elseif** `sl[1]['lem']`  ≟ "für" **then**:
  1. **let** `$adpcase` ≔ `<all>`1. **let** `$adpmaybe` ≔ ""
1. **else**:
  1. **let** `$adpcase` ≔ `<gen>`1. **let** `$adpmaybe` ≔ `tl[1]['whole']` 

### compstuff-mangler

Parametres: 1


1. **if** `tl[1]['a_nominal']`  ≟ `<n.compound-only-L>` **then**:
  1. **let** `$compstuff` ≔ ""
1. **elseif** `tl[1]['a_nominal']`  ≟ `<n.cmp>` **then**:
  1. **let** `$compstuff` ≔ ""
1. **elseif** `tl[1]['lem']`  ≟ "yksityis"`tl[1]['lem']`  ≟ "ulko"`tl[1]['lem']`  ≟ "vähimmäis"`tl[1]['lem']`  ≟ "yhteis"`tl[1]['lem']`  ≟ "lähi"`tl[1]['lem']`  ≟ "uudelleen" **then**:
  1. **let** `$compstuff` ≔ `<compound-only-L>`
1. **else**:
  1. **let** `$compstuff` ≔ `<sg.gen>`

### conneg-mangler

Parametres: 1


1. **if** `tl[1]['a_number']`  ≟ `<sg>``tl[1]['a_tense']`  ≟ `<past>` **then**:
  1. **let** `$conpart` ≔ `<sg.conneg>`
1. **elseif** `tl[1]['a_number']`  ≟ `<pl>``tl[1]['a_tense']`  ≟ `<past>` **then**:
  1. **let** `$conpart` ≔ `<pl.conneg>`
1. **elseif** `sl[1]['a_number']`  ≟ `<sg>``sl[1]['a_tense']`  ≟ `<pii>` **then**:
  1. **let** `$conpart` ≔ `<sg.conneg>`
1. **elseif** `sl[1]['a_number']`  ≟ `<pl>``sl[1]['a_tense']`  ≟ `<pii>` **then**:
  1. **let** `$conpart` ≔ `<pl.conneg>`
1. **elseif** `tl[1]['a_number']`  ≟ `<pl>``tl[1]['a_tense']`  ≟ `<pri>` **then**:
  1. **let** `$conpart` ≔ `<conneg>`
1. **elseif** `tl[1]['a_number']`  ≟ `<sg>``tl[1]['a_tense']`  ≟ `<pri>` **then**:
  1. **let** `$conpart` ≔ `<conneg>`
1. **else**:
  1. **let** `$conpart` ≔ `<conneg>`

## Rules
    
The actual rules concerning stuff.



### directionlich2adjgen: German directions are pr for some       reason but Finnish maybe adj.gen
    
#### Matching pattern:
    

1. directionlich_pr

#### Action:
    

1. Output: 
  1. directionlich``<ADJ.SG.GEN>``
    1. `tl[1]['lem']` `<adj.pos.sg.gen>`
    

### ex2np: totally broken deu analysis of 'de'
    
#### Matching pattern:
    

1. ex2np

#### Action:
    

1. Output: 
  1. ex2NP``<NP.SG.NOM>``
    1. "ex"`<n.sg.nom>`
    

### nochein2np: totally broken deu analysis of 'de'
    
#### Matching pattern:
    

1. nochein2np

#### Action:
    

1. Output: 
  1. nochein2NP``<ADV>``
    1. "yhä"`<adv>`
    

### soviele2np: totally broken deu analysis of 'de'
    
#### Matching pattern:
    

1. soviele2np

#### Action:
    

1. Output: 
  1. soviele2NP``<NP.SG.NOM>``
    1. "yhtä"`<adv>`
    1. `blank`1
    1. "paljon"`<adv>`
    

### desomalieren2np: totally broken deu analysis of 'de'
    
#### Matching pattern:
    

1. desomalieren2np

#### Action:
    

1. Output: 
  1. DESOMALIEREN2NP``<NP.PL.NOM>``
    1. "somali"`<n.pl.gen>`
    

### deadp2np: totally broken deu analysis of 'de'
    
#### Matching pattern:
    

1. deadp2np

#### Action:
    

1. Output: 
  1. DEADP2NP``<NP.SG.NOM>``
    1. "de"`<np.cog.sg.nom>`
    

### dest2np: St. mismatched
    
#### Matching pattern:
    

1. dest2np

#### Action:
    

1. Output: 
  1. DEST2NP``<NP.SG.NOM>``
    1. "St."`<np.sg.nom>`
    

### weder adj noch adj: negv adj cnjcoo+negv adj
    
#### Matching pattern:
    

1. weder_cc
1. adj
1. noch_cc
1. adj

#### Action:
    

1. case-mangler($2)
1. comparison-mangler($2)
1. comparison-mangler($4)
1. case-mangler($4)
1. Output: 
  1. AP``<CC>``
    1. "ei"`<vblex.neg.actv.p3.sg>`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_adj']` `$comparison``$number``$case`
    1. `blank`2
    1. "ei"`<vblex.neg.actv.p3.sg>`"+ka"`<enc>`
    1. `blank`3
    1. `tl[4]['lem']` `tl[4]['a_adj']` `$comparison``$number``$case`
    

### seit ZEIT bevor: AIKOIHIN
    
#### Matching pattern:
    

1. seit
1. zeitwort
1. bevor

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. Output: 
  1. AdvP``<ADV>``
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``<ill>`
    

### seit ZEIT: AIKOIHIN
    
#### Matching pattern:
    

1. seit
1. zeitwort

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. Output: 
  1. AdvP``<ADV>``
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``<ill>`
    

### über ZEIT hinweg: AJAN mittaan
    
#### Matching pattern:
    

1. über
1. zeitwort
1. hinweg

#### Action:
    

1. case-mangler($2)
1. Output: 
  1. AdvP``<ADV>``
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``<gen>`
    1. `blank`2
    1. "mittaan"`<adv>`
    

### nach INFORMATION: TIETOLÄHTEEN mukaan
    
#### Matching pattern:
    

1. nach
1. informationwort

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. Output: 
  1. AdvP``<ADV>``
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``<gen>`
    1. `blank`1
    1. "mukaan"`<post>`
    

### um N.NN uhr: kello N.NN
    
#### Matching pattern:
    

1. um
1. num
1. uhr

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. numtype-mangler($2)
1. Output: 
  1. UhrP``<UHR>``
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `<sg.nom>`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_num']` `$numtype``$number``$case`
    

### um leben gekommen: kuolla
    
#### Matching pattern:
    

1. um
1. det
1. leben
1. gekommen

#### Action:
    

1. Output: 
  1. VP``<dead.becoming>``
    1. "kuolla"`<vblex.actv.pp.pos.sg.nom>`
    

### gegen N.NN uhr: suunnilleen kello N.NN
    
#### Matching pattern:
    

1. gegen
1. num
1. uhr

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. numtype-mangler($2)
1. Output: 
  1. UhrP``<UHR>``
    1. "suunnilleen"`<post>`
    1. `blank`1
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `<sg.nom>`
    1. `blank`2
    1. `tl[2]['lem']` `tl[2]['a_num']` `$numtype``$number``$case`
    

### am NN. Monat: NN. kuuta
    
#### Matching pattern:
    

1. an
1. art
1. daynumber
1. monat

#### Action:
    

1. case-mangler($3)
1. number-mangler($3)
1. numtype-mangler($3)
1. Output: 
  1. MonatP``<MONAT>``
    1. `tl[3]['lem']` `tl[3]['a_num']` `$numtype``$number``<ess>`
    1. `blank`1
    1. `tl[4]['lem']` `tl[4]['a_nominal']` `<sg.par>`
    

### am NN. Monat: NN. kuuta
    
#### Matching pattern:
    

1. an
1. dem
1. daynumber
1. monat

#### Action:
    

1. case-mangler($1)
1. number-mangler($1)
1. numtype-mangler($1)
1. Output: 
  1. MonatP``<MONAT>``
    1. `tl[2]['lem']` `tl[2]['a_num']` `$numtype``$number``<sg.ess>`
    1. `blank`2
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `<sg.par>`
    

### NN. Monat: NN. kuuta
    
#### Matching pattern:
    

1. daynumber
1. monat

#### Action:
    

1. case-mangler($1)
1. number-mangler($1)
1. numtype-mangler($1)
1. Output: 
  1. MonatP``<MONAT>``
    1. `tl[1]['lem']` `tl[1]['a_num']` `$numtype``$number``$case`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `<sg.par>`
    

### N.NN uhr: kello N.NN
    
#### Matching pattern:
    

1. num
1. uhr

#### Action:
    

1. case-mangler($1)
1. number-mangler($1)
1. numtype-mangler($1)
1. Output: 
  1. UhrP``<UHR>``
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `<sg.nom>`
    1. `blank`1
    1. `tl[1]['lem']` `tl[1]['a_num']` `$numtype``$number``$case`
    

### wie geht es: how goes
    
#### Matching pattern:
    

1. wie
1. gehen
1. es

#### Action:
    

1. infinite-mangler($2)
1. tensemood-mangler($2)
1. Output: 
  1. VP``<V>``<ADE>``
    1. `tl[1]['lem']` `tl[1]['a_adv']` 
    1. `blank`1
    1. "mennä"`tl[2]['a_verb']` `<actv>``$tense``<p3.sg>`
    

### NP geht es: adessive goes
    
#### Matching pattern:
    

1. nominal
1. gehen
1. es

#### Action:
    

1. case-mangler($1)
1. number-mangler($1)
1. infinite-mangler($2)
1. tensemood-mangler($2)
1. Output: 
  1. VP``<V>``<ADE>``
    1. `tl[1]['lem']` `tl[1]['a_nominal']` `$number``<ade>`
    1. `blank`1
    1. "mennä"`tl[2]['a_verb']` `<actv>``$tense``<p3.sg>`
    

### ab NN: NN:sta alkaen
    
#### Matching pattern:
    

1. ab
1. num

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. numtype-mangler($2)
1. Output: 
  1. NumP``<NUM>``<ela>``
    1. `tl[2]['lem']` `tl[2]['a_num']` `$numtype``$number``<ela>`
    1. `blank`1
    1. "alkaen"`<post>`
    

### bis NN: NN:ään asti
    
#### Matching pattern:
    

1. bis
1. num

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. numtype-mangler($2)
1. Output: 
  1. NumP``<NUM>``<ela>``
    1. `tl[2]['lem']` `tl[2]['a_num']` `$numtype``$number``<ill>`
    1. `blank`1
    1. "asti"`<post>`
    

### adp nominal, nominal und nominal: drop case move case to last N of NP
    
#### Matching pattern:
    

1. adp
1. nominal
1. comma
1. nominal
1. cnjcoo
1. nominal

#### Action:
    

1. adp-mangler($1)
1. number-mangler($2)
1. number-mangler($4)
1. number-mangler($6)
1. Output: 
  1. NP``<NP>``$adpcase``
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$number``$adpcase`
    1. `blank`2
    1. `tl[3]['whole']` 
    1. `blank`3
    1. `tl[4]['lem']` `tl[4]['a_nominal']` `$number``$adpcase`
    1. `blank`4
    1. `tl[5]['whole']` 
    1. `blank`5
    1. `tl[6]['lem']` `tl[6]['a_nominal']` `$number``$adpcase`
    1. `blank`1
    1. `$adpmaybe`
    

### adp nominal nominal nominal: drop case move case to last N of NP
    
#### Matching pattern:
    

1. adp
1. nominal
1. nominal
1. nominal

#### Action:
    

1. adp-mangler($1)
1. number-mangler($2)
1. number-mangler($3)
1. number-mangler($4)
1. Output: 
  1. NP``<NP>``$adpcase``
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$number``<nom>`
    1. `blank`2
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `$number``<nom>`
    1. `blank`3
    1. `tl[4]['lem']` `tl[4]['a_nominal']` `$number``$adpcase`
    1. `blank`1
    1. `$adpmaybe`
    

### adp det nouns propn:  move case to first N of reformatted       genitive NP
    
#### Matching pattern:
    

1. adp
1. det
1. nominal
1. np

#### Action:
    

1. adp-mangler($1)
1. case-mangler($2)
1. case-mangler($3)
1. case-mangler($4)
1. Output: 
  1. NP``<NP>``<GEN>``$adpcase``
    1. `tl[4]['lem']` `tl[4]['a_nominal']` `tl[4]['a_number']` `<gen>`
    1. `blank`1
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `tl[3]['a_number']` `$adpcase`
    1. `blank`2
    1. `$adpmaybe`
    

### adp det nouns nouns: drop case, det, move case to last N of       compound(?) NP
    
#### Matching pattern:
    

1. adp
1. det
1. nominal
1. nominal

#### Action:
    

1. adp-mangler($1)
1. case-mangler($2)
1. case-mangler($3)
1. case-mangler($4)
1. Output: 
  1. NP``<NP>``$adpcase``
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `tl[3]['a_number']` `<nom>`
    1. `blank`2
    1. `tl[4]['lem']` `tl[4]['a_nominal']` `tl[4]['a_number']` `$adpcase`
    1. `blank`1
    1. `$adpmaybe`
    

### adp det adj nouns: drop case, det, move case
    
#### Matching pattern:
    

1. adp
1. det
1. adj
1. nominal

#### Action:
    

1. adp-mangler($1)
1. case-mangler($2)
1. case-mangler($3)
1. case-mangler($4)
1. comparison-mangler($3)
1. Output: 
  1. NP``<NP>``$adpcase``
    1. `tl[3]['lem']` `tl[3]['a_adj']` `$comparison``tl[4]['a_number']` `$adpcase`
    1. `blank`1
    1. `tl[4]['lem']` `tl[4]['a_nominal']` `tl[4]['a_number']` `$adpcase`
    1. `blank`1
    1. `$adpmaybe`
    

### adp cmp nominal: drop case move case to last N of NP
    
#### Matching pattern:
    

1. adp
1. cmp
1. nominal

#### Action:
    

1. adp-mangler($1)
1. number-mangler($2)
1. number-mangler($3)
1. compstuff-mangler($2)
1. Output: 
  1. NP``<NP>``<CMP>``$adpcase``
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$compstuff`"+"`tl[3]['lem']` `tl[3]['a_nominal']` `$number``$adpcase`
    1. `blank`1
    1. `$adpmaybe`
    

### adp nominal nominal: drop case move case to last N of NP
    
#### Matching pattern:
    

1. adp
1. nominal
1. nominal

#### Action:
    

1. adp-mangler($1)
1. number-mangler($2)
1. number-mangler($3)
1. Output: 
  1. NP``<NP>``$adpcase``
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$number``<nom>`
    1. `blank`2
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `$number``$adpcase`
    1. `blank`1
    1. `$adpmaybe`
    

### adp det nouns: drop case, det, move case
    
#### Matching pattern:
    

1. adp
1. det
1. nominal

#### Action:
    

1. adp-mangler($1)
1. case-mangler($2)
1. case-mangler($3)
1. number-mangler($3)
1. Output: 
  1. NP``<NP>``$adpcase``
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `$number``$adpcase`
    1. `blank`1
    1. `$adpmaybe`
    

### als adj noun: is essive
    
#### Matching pattern:
    

1. als
1. adj
1. noun

#### Action:
    

1. comparison-mangler($2)
1. case-mangler($3)
1. number-mangler($3)
1. Output: 
  1. NP``<NP>``<ESS>``
    1. `tl[2]['lem']` `tl[2]['a_adj']` `$comparison``$number``<ess>`
    1. `blank`2
    1. `tl[3]['lem']` `tl[3]['a_noun']` `$number``<ess>`
    

### dets adjs nouns: share case and pl
    
#### Matching pattern:
    

1. det
1. adj
1. nominal

#### Action:
    

1. case-mangler($3)
1. number-mangler($3)
1. comparison-mangler($2)
1. Output: 
  1. NP``<NP>``$number``$case``
    1. `tl[2]['lem']` `tl[2]['a_adj']` `$comparison``$number``$case`
    1. `blank`2
    1. `tl[3]['lem']` `tl[3]['a_noun']` `$number``$case`
    

### pps nouns: share case and pl
    
#### Matching pattern:
    

1. participle
1. nominal

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. Output: 
  1. NP``<NP>``$number``$case``
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<actv.pp.pos>``$number``$case`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``$case`
    

### adjs comp nouns: share case and pl
    
#### Matching pattern:
    

1. adj
1. cmp
1. nominal

#### Action:
    

1. compstuff-mangler($2)
1. case-mangler($3)
1. number-mangler($3)
1. comparison-mangler($1)
1. Output: 
  1. NP``<NP>``$number``$case``
    1. `tl[1]['lem']` `tl[1]['a_adj']` `$comparison``$number``$case`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$compstuff`"+"`tl[3]['lem']` `tl[3]['a_noun']` `$number``$case`
    

### adjs nouns: share case and pl
    
#### Matching pattern:
    

1. adj
1. nominal

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. comparison-mangler($1)
1. Output: 
  1. NP``<NP>``$number``$case``
    1. `tl[1]['lem']` `tl[1]['a_adj']` `$comparison``$number``$case`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``$case`
    

### nouns haver: adessive structurise!
    
#### Matching pattern:
    

1. nominal
1. haver

#### Action:
    

1. case-mangler($1)
1. tensemood-mangler($2)
1. pers-mangler($2)
1. Output: 
  1. NP``<N>``<ADE>``
    1. `tl[1]['lem']` `tl[1]['a_nominal']` `tl[1]['a_number']` `<ade>`
    1. `blank`
    1. `tl[2]['lem']` `tl[2]['a_verb']` `<actv>``$tense``<p3.sg>`
    

### perfect verbs: re-order, and re-perfect
    
#### Matching pattern:
    

1. perfection
1. haver

#### Action:
    

1. tensemood-mangler($2)
1. number-mangler($2)
1. pers-mangler($2)
1. Output: 
  1. VP``<V>``<PERF>``
    1. "olla"`<vaux>``<actv>``$tense``$pers`
    1. `blank`
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<actv>``tl[1]['a_perf']` `<pos>``$number``<nom>`
    

### als noun: is essive
    
#### Matching pattern:
    

1. als
1. noun

#### Action:
    

1. case-mangler($2)
1. number-mangler($2)
1. Output: 
  1. NP``<N>``<ESS>``
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``<ess>`
    

### pp werden: passive construction, kill aux and passivise
    
#### Matching pattern:
    

1. perfection
1. werden

#### Action:
    

1. infinite-mangler($1)
1. tensemood-mangler($2)
1. Output: 
  1. VP``<V>``<AUX>``
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<pasv>``$tense``<impers>`
    

### aux verbs: re-order, and distribute, persons
    
#### Matching pattern:
    

1. infinite
1. auxiliary

#### Action:
    

1. infinite-mangler($1)
1. number-mangler($2)
1. tensemood-mangler($2)
1. pers-mangler($2)
1. Output: 
  1. VP``<V>``<AUX>``
    1. `tl[2]['lem']` `tl[2]['a_verb']` `<actv>``$tense``$pers`
    1. `blank`
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<actv>``tl[1]['a_inf']` `$number``$case`
    

### verb kein noun: en verb mikään noun
    
#### Matching pattern:
    

1. verb
1. kein
1. noun

#### Action:
    

1. conneg-mangler($1)
1. tensemood-mangler($1)
1. voice-mangler($1)
1. pers-mangler($1)
1. number-mangler($1)
1. case-mangler($3)
1. Output: 
  1. VP``<V>``<NEG>``
    1. "ei"`<vblex.neg.actv>``$pers`
    1. `blank`
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<actv>``$tense``$conpart`
    1. `blank`
    1. "mikään"`<prn>``$number``<nom>`
    1. `blank`
    1. `tl[3]['lem']` `tl[3]['a_nominal']` `$number``$case`
    

### verb neg pcp: ei oltu tehty
    
#### Matching pattern:
    

1. verb
1. verbnegation
1. participle

#### Action:
    

1. tensemood-mangler($1)
1. voice-mangler($1)
1. pers-mangler($1)
1. number-mangler($1)
1. case-mangler($3)
1. Output: 
  1. VP``<V>``<NEG>``
    1. "ei"`<vblex.neg.actv>``$pers`
    1. `blank`
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<pasv>``$tense``<impers.conneg>`
    1. `blank`
    1. `tl[3]['lem']` `tl[3]['a_verb']` `<pasv.pp.pos>``$number``$case`
    

### verb negs: to neg conneg
    
#### Matching pattern:
    

1. verb
1. verbnegation

#### Action:
    

1. tensemood-mangler($1)
1. pers-mangler($1)
1. conneg-mangler($1)
1. Output: 
  1. VP``<V>``<NEG>``
    1. "ei"`<vblex.neg.actv>``$pers`
    1. `blank`
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<actv>``$tense``$conpart`
    

### neg verbs: to neg conneg
    
#### Matching pattern:
    

1. verbnegation
1. verb

#### Action:
    

1. tensemood-mangler($2)
1. pers-mangler($2)
1. conneg-mangler($2)
1. Output: 
  1. VP``<V>``<NEG>``
    1. "ei"`<vblex.neg.actv>``$pers`
    1. `blank`
    1. `tl[2]['lem']` `tl[2]['a_verb']` `<actv>``$tense``$conpart`
    

### dets compnouns: case mangle
    
#### Matching pattern:
    

1. det
1. cmp
1. noun

#### Action:
    

1. case-mangler($1)
1. case-mangler($2)
1. case-mangler($3)
1. compstuff-mangler($2)
1. Output: 
  1. NP``<N>``<CMP>``
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$compstuff`"+"`tl[3]['lem']` `tl[3]['a_noun']` `tl[3]['a_number']` `$case`
    

### adp prndem propn: deu fail~prndem is actually det
    
#### Matching pattern:
    

1. adp
1. prndem
1. np

#### Action:
    

1. adp-mangler($1)
1. case-mangler($2)
1. case-mangler($3)
1. number-mangler($3)
1. Output: 
  1. NP``<N>``$number``$case``
    1. `tl[3]['lem']` `tl[3]['a_noun']` `$number``$adpcase`
    1. `blank`1
    1. `$adpmaybe`
    

### prndem propn: deu fail~prndem is actually det
    
#### Matching pattern:
    

1. prndem
1. np

#### Action:
    

1. case-mangler($1)
1. case-mangler($2)
1. number-mangler($2)
1. Output: 
  1. NP``<N>``$number``$case``
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``$case`
    

### dets nouns: case mangle
    
#### Matching pattern:
    

1. det
1. noun

#### Action:
    

1. case-mangler($1)
1. case-mangler($2)
1. number-mangler($2)
1. Output: 
  1. NP``<N>``$number``$case``
    1. `tl[2]['lem']` `tl[2]['a_noun']` `$number``$case`
    

### prn pers: case mangle and drop mfs
    
#### Matching pattern:
    

1. prnpers

#### Action:
    

1. case-mangler($1)
1. Output: 
  1. PRNP``<PRN>``
    1. `tl[1]['lem']` `tl[1]['a_prn']` `tl[1]['a_number']` `tl[1]['a_case']` 
    

### adp nominal und nominal: drop case distribute case
    
#### Matching pattern:
    

1. adp
1. nominal
1. cnjcoo
1. nominal

#### Action:
    

1. adp-mangler($1)
1. number-mangler($2)
1. Output: 
  1. NP``<NP>``$adpcase``
    1. `$adpmaybe`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$number``$adpcase`
    1. `blank`2
    1. `tl[3]['whole']` 
    1. `blank`3
    1. `tl[4]['lem']` `tl[4]['a_nominal']` `$number``$adpcase`
    

### adp nominal: drop case move case
    
#### Matching pattern:
    

1. adp
1. nominal

#### Action:
    

1. adp-mangler($1)
1. number-mangler($2)
1. Output: 
  1. NP``<NP>``$adpcase``
    1. `$adpmaybe`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$number``$adpcase`
    

### possess nominals: possessive suffix
    
#### Matching pattern:
    

1. poss
1. nominal

#### Action:
    

1. possessive-mangler($1)
1. number-mangler($2)
1. case-mangler($2)
1. Output: 
  1. NP``<N>``<POSS>``
    1. `$prnmaybe`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `$number``$case``$possess`
    

### numeral multiplier plural: partitive or stuff
    
#### Matching pattern:
    

1. cardinal
1. multiplier
1. plural

#### Action:
    

1. numtype-mangler($1)
1. Output: 
  1. MeasureP``<CountXP>``
    1. `tl[1]['lem']` `tl[1]['a_num']` `<card.sg.nom>`
    1. `blank`1
    1. `tl[2]['lem']` `<num.card.sg.par>`
    1. `blank`2
    1. `tl[3]['lem']` `tl[3]['a_noun']` `<sg.par>`
    

### numeral plural: partitive or stuff
    
#### Matching pattern:
    

1. cardinal
1. plural

#### Action:
    

1. numtype-mangler($1)
1. Output: 
  1. MeasureP``<CountP>``
    1. `tl[1]['lem']` `tl[1]['a_num']` `$numtype``<sg.nom>`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_noun']` `<sg.par>`
    

### adp numeral: add case and number
    
#### Matching pattern:
    

1. adp
1. num

#### Action:
    

1. adp-mangler($1)
1. numtype-mangler($2)
1. Output: 
  1. NumP``<NumP>``$adpcase``
    1. `$adpmaybe`
    1. `blank`1
    1. `tl[2]['lem']` `tl[2]['a_num']` `$numtype``<sg>``$adpcase`
    

### noun compounds: recompound
    
#### Matching pattern:
    

1. cmp
1. cmp
1. noun

#### Action:
    

1. case-mangler($3)
1. Output: 
  1. N``<N.CMP>``
    1. `tl[1]['lem']` `tl[1]['a_nominal']` `tl[1]['a_number']` `<gen>`
    1. `tl[2]['lem']` `tl[2]['a_nominal']` `tl[2]['a_number']` `<gen>`
    1. `tl[3]['lem']` `tl[3]['a_noun']` `tl[3]['a_number']` `$case`
    

### noun compounds: recompound
    
#### Matching pattern:
    

1. cmp
1. noun

#### Action:
    

1. compstuff-mangler($1)
1. case-mangler($2)
1. Output: 
  1. N``<N.CMP>``
    1. `tl[1]['lem']` `tl[1]['a_nominal']` `$compstuff`"+"`tl[2]['lem']` `tl[2]['a_noun']` `tl[2]['a_number']` `$case`
    

### comps: stray compounds :-(((
    
#### Matching pattern:
    

1. cmp

#### Action:
    

1. Output: 
  1. NP``<CMP>``
    1. `tl[1]['lem']` "-"`<compound-only-L>`
    

### nouns: case mangle
    
#### Matching pattern:
    

1. noun

#### Action:
    

1. case-mangler($1)
1. Output: 
  1. NP``<N.FOOFOO>``
    1. `tl[1]['lem']` `tl[1]['a_noun']` `tl[1]['a_number']` `$case`
    

### abbrs to nouns: case mangle
    
#### Matching pattern:
    

1. abbr

#### Action:
    

1. case-mangler($1)
1. number-mangler($1)
1. Output: 
  1. NP``<N.ABBR>``
    1. `tl[1]['lem']` `tl[1]['a_noun']` `$number``$case`
    

### adjs: add case
    
#### Matching pattern:
    

1. adj

#### Action:
    

1. case-mangler($1)
1. number-mangler($1)
1. comparison-mangler($1)
1. Output: 
  1. AP``<A>``
    1. `tl[1]['lem']` `tl[1]['a_adj']` `$comparison``$number``<nom>`
    

### prns: case mangle, determine number
    
#### Matching pattern:
    

1. prn

#### Action:
    

1. case-mangler($1)
1. number-mangler($1)
1. Output: 
  1. PrnP``<PRN>``
    1. `tl[1]['lem']` `tl[1]['a_prn']` `$number``$case`
    

### nums: add case, drop pl to sg
    
#### Matching pattern:
    

1. num

#### Action:
    

1. numtype-mangler($1)
1. Output: 
  1. NumP``<Num>``
    1. `tl[1]['lem']` `tl[1]['a_num']` `$numtype``<sg.nom>`
    

### adps: drop case
    
#### Matching pattern:
    

1. adp

#### Action:
    

1. Output: 
  1. AdpP``<Adp>``sl[1]['a_case']` `
    1. `tl[1]['lem']` `tl[1]['a_adp']` 
    

### stray negs: just say no
    
#### Matching pattern:
    

1. verbnegation

#### Action:
    

1. Output: 
  1. VP``<V>``<NEG>``
    1. "ei"`<vblex.neg.actv.p3.sg>`
    

### stray possessives: ugly genitives
    
#### Matching pattern:
    

1. poss

#### Action:
    

1. Output: 
  1. PossP``<Poss>``
    1. `tl[1]['lem']` `tl[1]['a_prn']` `tl[1]['a_number']` `<gen>`
    

### stranded articles: don't want
    
#### Matching pattern:
    

1. art

#### Action:
    

1. Output: 
  1. ArtP``<ART>``
    1. `blank`
    

### stranded dets: just show them
    
#### Matching pattern:
    

1. det

#### Action:
    

1. case-mangler($1)
1. number-mangler($1)
1. Output: 
  1. DetP``<Det>``
    1. `tl[1]['lem']` `tl[1]['a_det']` `$number``$case`
    1. `blank`1
    

### lost perfect verbs: maybe predicative adj
    
#### Matching pattern:
    

1. perfection

#### Action:
    

1. tensemood-mangler($1)
1. Output: 
  1. VP``<V>``<PERF>``
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<pasv>``tl[1]['a_perf']` `<pos.sg.nom>`
    

### lonely infinitive: map infs and gers
    
#### Matching pattern:
    

1. infinite

#### Action:
    

1. infinite-mangler($1)
1. number-mangler($1)
1. Output: 
  1. VP``<V>``<INF>``
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<actv>``tl[1]['a_inf']` `$number``$case`
    

### verbs: add activ passif, change past tags
    
#### Matching pattern:
    

1. verb

#### Action:
    

1. tensemood-mangler($1)
1. pers-mangler($1)
1. Output: 
  1. VP``<V>``
    1. `tl[1]['lem']` `tl[1]['a_verb']` `<actv>``$tense``$pers`
    

### REGLA: SENT
    
#### Matching pattern:
    

1. sent

#### Action:
    

1. Output: 
  1. sent``<SENT>``
    1. `tl[1]['whole']` 
    

- - -

Documentation for [apertium-fin-deu](//github.com/apertium/apertium-fin-deu/).
Generated with [Flammie’s apevis-xslt](https://github.com/flammie/apevis-xslt).
  