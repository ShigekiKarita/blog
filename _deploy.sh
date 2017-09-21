#!sh
fname=`tempfile`_site
bundle exec jekyll build && \
    cp -r _site $fname && \
    git checkout gh-pages && \
    ls | xargs rm -r && \
    cp -r $fname/* . && \
    touch .nojekyll && \
    git add . && \
    git commit -m "gen" && \
    git push -f origin gh-pages && \
    git checkout master
