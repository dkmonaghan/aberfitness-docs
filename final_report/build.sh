rm final_report.pdf &&
pdflatex --shell-escape final_report.tex &&
./texcount.pl -inc -total final_report.tex

