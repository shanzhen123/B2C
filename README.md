brew install ImageMagick

git clone https://github.com/shanzhen123/B2C.git

cd  B2C

bundle install

rake db:create

rake db:migrate

rails server
