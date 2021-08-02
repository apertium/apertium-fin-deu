## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, version 3 of the License.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

LANG1=fin
LANG2=deu
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

BASENAME=apertium-$(PREFIX1)


## apevis gh-pages
if CAN_SAXON
LANG1HTML=Finnish
LANG2HTML=German

noinst_DATA=$(BASENAME).$(PREFIX1).dix.markdown \
			$(BASENAME).$(PREFIX2).dix.markdown \
			$(BASENAME).$(PREFIX1).t1x.markdown \
			$(BASENAME).$(PREFIX1).t2x.markdown \
			$(BASENAME).$(PREFIX1).t3x.markdown \
			$(BASENAME).$(PREFIX2).t1x.markdown \
			$(BASENAME).$(PREFIX2).t2x.markdown \
			$(BASENAME).$(PREFIX2).t3x.markdown \
			statistics.markdown

bidix2md-split.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/master/$@

bidix2md.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/master/$@

tix2md.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/master/$@

dix2statistic-markdown.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/master/$@

$(BASENAME).$(PREFIX1).dix.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).dix bidix2md.xslt
	$(SAXON) -s:$< bidix2md.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2) > $@

$(BASENAME).$(PREFIX2).dix.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).dix bidix2md.xslt
	$(SAXON) -s:$< bidix2md.xslt from=$(LANG2HTML) to=$(LANG1HTML) pair=$(PREFIX1) antipair=$(PREFIX2)  invert=true > $@

$(BASENAME).$(PREFIX1).t1x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).t1x tix2md.xslt
	$(SAXON) -s:$< tix2md.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX2) antipair=$(PREFIX1)  > $@

$(BASENAME).$(PREFIX1).t2x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).t2x tix2md.xslt
	$(SAXON) -s:$< tix2md.xslt  from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX2) antipair=$(PREFIX1)  > $@

$(BASENAME).$(PREFIX1).t3x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).t3x tix2md.xslt
	$(SAXON) -s:$< tix2md.xslt  from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX2) antipair=$(PREFIX1)  > $@

$(BASENAME).$(PREFIX2).t1x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX2).t1x tix2md.xslt
	$(SAXON) -s:$< tix2md.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2)  > $@

$(BASENAME).$(PREFIX2).t2x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX2).t2x tix2md.xslt
	$(SAXON) -s:$< tix2md.xslt  from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2)  > $@

$(BASENAME).$(PREFIX2).t3x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX2).t3x tix2md.xslt
	$(SAXON) -s:$< tix2md.xslt  from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2)  > $@

stats-$(BASENAME).$(PREFIX1).dix.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).dix dix2statistic-markdown.xslt
	$(SAXON) -s:$< dix2statistic-markdown.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2) > $@

stats-$(BASENAME).$(PREFIX1).t1x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).t1x dix2statistic-markdown.xslt
	$(SAXON) -s:$< dix2statistic-markdown.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2) > $@

stats-$(BASENAME).$(PREFIX1).t2x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).t2x dix2statistic-markdown.xslt
	$(SAXON) -s:$< dix2statistic-markdown.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2) > $@

stats-$(BASENAME).$(PREFIX1).t3x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX1).t3x dix2statistic-markdown.xslt
	$(SAXON) -s:$< dix2statistic-markdown.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2) > $@

stats-$(BASENAME).$(PREFIX2).t1x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX2).t1x dix2statistic-markdown.xslt
	$(SAXON) -s:$< dix2statistic-markdown.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2) > $@

stats-$(BASENAME).$(PREFIX2).t2x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX2).t2x dix2statistic-markdown.xslt
	$(SAXON) -s:$< dix2statistic-markdown.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2) > $@

stats-$(BASENAME).$(PREFIX2).t3x.markdown: $(top_srcdir)/$(BASENAME).$(PREFIX2).t3x dix2statistic-markdown.xslt
	$(SAXON) -s:$< dix2statistic-markdown.xslt from=$(LANG1HTML) to=$(LANG2HTML) pair=$(PREFIX1) antipair=$(PREFIX2) > $@

statistics.markdown: stats-$(BASENAME).$(PREFIX1).dix.markdown \
				 stats-$(BASENAME).$(PREFIX1).t1x.markdown \
				 stats-$(BASENAME).$(PREFIX2).t1x.markdown \
				 stats-$(BASENAME).$(PREFIX1).t2x.markdown \
				 stats-$(BASENAME).$(PREFIX2).t2x.markdown \
				 stats-$(BASENAME).$(PREFIX1).t3x.markdown \
				 stats-$(BASENAME).$(PREFIX2).t3x.markdown
	$(AWK) '/^# /,/^- - -/ {print;}' < \
		stats-$(BASENAME).$(PREFIX1).dix.markdown | fgrep -v -- '- - -' > $@
	$(AWK) '/^## /,/^- - -/ {print;}' < \
		stats-$(BASENAME).$(PREFIX1).t1x.markdown | fgrep -v -- '- - -' >> $@
	$(AWK) '/^## /,/^- - -/ {print;}' < \
		stats-$(BASENAME).$(PREFIX1).t2x.markdown | fgrep -v -- '- - -' >> $@
	$(AWK) '/^## /,/^- - -/ {print;}' < \
		stats-$(BASENAME).$(PREFIX1).t3x.markdown | fgrep -v -- '- - -' >> $@
	$(AWK) '/^## /,/^- - -/ {print;}' < \
		stats-$(BASENAME).$(PREFIX2).t1x.markdown | fgrep -v -- '- - -' >> $@
	$(AWK) '/^## /,/^- - -/ {print;}' < \
		stats-$(BASENAME).$(PREFIX2).t2x.markdown | fgrep -v -- '- - -' >> $@
	$(AWK) '/^## /,/^- - -/ {print;}' < \
		stats-$(BASENAME).$(PREFIX2).t3x.markdown | fgrep -v -- '- - -' >> $@
	$(AWK) '/- - -/,0 {print;}' < \
		stats-$(BASENAME).$(PREFIX1).dix.markdown >> $@

endif

