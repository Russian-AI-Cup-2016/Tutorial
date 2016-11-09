call wipe.bat

if exist JavaDocsRu.tex (
    if exist TutorialRu.tex (
        pdflatex JavaDocsRu.tex
        pdflatex JavaDocsRu.tex
    )
)

if exist JavaDocsEn.tex (
    if exist TutorialEn.tex (
        pdflatex JavaDocsEn.tex
        pdflatex JavaDocsEn.tex
    )
)

call wipe-except-pdf.bat

if exist JavaDocsRu.pdf (
    ren JavaDocsRu.pdf TutorialRu.pdf
    copy /Y TutorialRu.pdf ..\code\site\src\main\webapp\assets\documentation\codewizards2016-docs-ru.pdf
)

if exist JavaDocsEn.pdf (
    ren JavaDocsEn.pdf TutorialEn.pdf
    copy /Y TutorialEn.pdf ..\code\site\src\main\webapp\assets\documentation\codewizards2016-docs-en.pdf
)
