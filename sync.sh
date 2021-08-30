#cd /Users/zliu/Documents/my_data/homepage
cp /Users/zliu/Dropbox/carrer-plan/cv/Zhengchun_Liu_CV.pdf ./file/
cd file/
pdf2htmlEX --zoom 2 Zhengchun_Liu_CV.pdf
cd ..
git add .
git commit -m "add, delete, polish etc."
git pull
git push

# bundle exec jekyll serve
bundle exec jekyll build --incremental 
# scp -r _site mcs:~/public_html/
rsync --ignore-existing _site/*.html mcs:~/public_html/
rsync --ignore-existing img/* mcs:~/public_html/img/
rsync --ignore-existing file/* mcs:~/public_html/file/
rsync --ignore-existing file/bib/* mcs:~/public_html/file/bib/
rsync --ignore-existing file/take-away/* mcs:~/public_html/file/take-away/
