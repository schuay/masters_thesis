latex_get_output_path(OUTPUT_DIR)

add_latex_document(presentation.tex
    INPUTS acronyms.tex
           klsm_insertion_00.tex
           klsm_insertion_01.tex
           klsm_insertion_02.tex
           slsm_structure.tex
    BIBFILES bibliography.bib
    IMAGE_DIRS figures)