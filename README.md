# FAccT '26 Camera-Ready Paper Template

This is a modified ACM template for preparing camera-ready papers for the
ACM Conference on Fairness, Accountability, and Transparency (FAccT '26).

## Modifications from the original ACM template

- **Document class**: `\documentclass[acmlarge]{acmart}` — single-column format.
  Note: this differs from the previously communicated
  `\documentclass[acmlarge, nonacm]{acmart}` with
  `\AtBeginDocument{\settopmatter{printacmref=true}}`. The current setup
  does not use `nonacm`, so the ACM reference format and branding are
  included by default, and the `printacmref` override is not needed.
- **Conference footer**: A custom footer showing the conference short name,
  date, and location (`FAccT '26, June 25--28, 2026, Montréal, Canada.`)
  appears at the bottom of every page.
- **Makefile** and **.gitignore** added for convenient compilation and
  cleanup (if compiling locally).

## Paper format

If you already prepared you paper with previous instructions, simply follow the
instructions in this subsection. LaTeX users should submit camera-ready papers
in **single-column format**, along with the ACM reference format and branding:

```latex
\documentclass[acmlarge]{acmart}
\AtBeginDocument{
  % First page
  \fancypagestyle{firstpagestyle}{
    \fancyhf{}
    \fancyhead[RO,LE]{\thepage}
    \fancyfoot[RO,LE]{\footnotesize
      \myconfshort, \myconfdate, \myconfloc.
    }
  }

  % Other pages
  \fancyfoot[RO,LE]{\footnotesize
    \myconfshort, \myconfdate, \myconfloc.
  }
}
\makeatletter
\newcommand{\myconfshort}{\acmConference@shortname}
\newcommand{\myconffull}{\acmConference@name}
\newcommand{\myconfdate}{\acmConference@date}
\newcommand{\myconfloc}{\acmConference@venue}
\makeatother
```

## Paper length

- The paper body has a length limit of **15 pages** (camera-ready papers are
  given an extra page to address reviewer comments).
- There is **no limit** on additional pages for endmatter sections
  (Generative AI Usage Statement, Author Contributions, Acknowledgements,
  Competing Interests, Positionality Statement, Ethical Considerations
  Statement), references, and appendices.

## Building locally

```bash
make          # Compile main.tex into main.pdf
make clean    # Remove auxiliary files (keeps .pdf, .tex, .bib, .cls)
```

The build runs `pdflatex` → `bibtex` → `pdflatex` × 2 in nonstop mode to
resolve all references and bibliography.

## Further reading

- [Preparing your article with LaTeX](https://authors.acm.org/proceedings/production-information/preparing-your-article-with-latex)
- [Preparing your article with Microsoft Word](https://authors.acm.org/proceedings/production-information/preparing-your-article-with-microsoft-word)

For technical difficulties (LaTeX or Word), ACM's production vendor has 24/7
support at acmtexsupport@aptaracorp.com.
