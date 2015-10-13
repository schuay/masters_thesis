latex_get_output_path(OUTPUT_DIR)
    
add_latex_document(thesis.tex
    INPUTS graphics/fig.eps
           acronyms.tex
           00_frontmatter.tex
           01_introduction.tex
           02_sequential.tex
           03_definitions.tex
           04_strict.tex
           05_relaxed.tex
           06_implementation.tex
           07_evaluation.tex
           08_conclusion.tex
    BIBFILES bibliography.bib
    IMAGE_DIRS graphics
    USE_GLOSSARY
    USE_INDEX)
