latex_get_output_path(OUTPUT_DIR)
    
add_latex_document(poster.tex
    INPUTS acronyms.tex
    BIBFILES bibliography.bib
    IMAGE_DIRS figures)