latex_get_output_path(OUTPUT_DIR)

add_latex_document(thesis.tex
    INPUTS acronyms.tex
           titlepage.pdf
    BIBFILES bibliography.bib
    IMAGE_DIRS graphics
    DEPENDS ${CMAKE_SOURCE_DIR}/titlepage/titlepage.tex)
    
add_dependencies(thesis titlepage)