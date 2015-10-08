latex_get_output_path(OUTPUT_DIR)
    
add_latex_document(thesis.tex
    INPUTS acronyms.tex graphics/fig.eps
    BIBFILES bibliography.bib
    IMAGE_DIRS graphics
    USE_GLOSSARY
    USE_INDEX)