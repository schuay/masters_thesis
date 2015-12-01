latex_get_output_path(OUTPUT_DIR)

add_latex_document(presentation.tex
    INPUTS acronyms.tex
    BIBFILES bibliography.bib
    IMAGE_DIRS figures)