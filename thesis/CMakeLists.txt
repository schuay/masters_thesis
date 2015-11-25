latex_get_output_path(OUTPUT_DIR)

add_latex_document(thesis.tex
    INPUTS acronyms.tex
           titlepage.pdf
    BIBFILES bibliography.bib
    IMAGE_DIRS graphics)