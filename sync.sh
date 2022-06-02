#! /bin/bash 

cd /Users/zliu/Documents/my_data/homepage
# cp /Users/zliu/Dropbox/carrer-plan/cv/Zhengchun_Liu_CV.pdf ./file/
# cd file/
# pdf2htmlEX --zoom 2 Zhengchun_Liu_CV.pdf
# cd ..
git add .
git commit -m "add, delete, polish etc."
git pull
git push

# bundle exec jekyll serve
bundle exec jekyll build --incremental 
scp -r _site/*.html mcs:~/public_html/
rsync -r -t _site/*.html mcs:~/public_html/
rsync -r -t img/* mcs:~/public_html/img/
rsync -r -t file/* mcs:~/public_html/file/
rsync -r -t --ignore-existing file/bib/* mcs:~/public_html/file/bib/
rsync -r -t --ignore-existing file/take-away/* mcs:~/public_html/file/take-away/
