all: html docx txt

html: resume.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o resume.html resume.md

docx: resume.md
	pandoc --from markdown --to docx -o resume.docx resume.md

txt: resume.md
	pandoc --standalone --smart --from markdown --to plain -o resume.txt resume.md

clean:
	rm -f *.html *.docx *.txt