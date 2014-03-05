A [gitit](https://github.com/jgm/gitit) theme based on [Bootstrap](http://getbootstrap.com/).

## How to install

Run the following commands:

    cd /path/to/your/gitit/wiki
    cp -a static static.back
    mv templates templates.back
    wget https://github.com/Changaco/gitit-bootstrap/archive/master.tar.gz -O gitit-bootstrap.tar.gz
    tar -xaf gitit-bootstrap.tar.gz --strip-components 1
    cp templates.back/footer.st templates
    ./build.sh

Then restart gitit.

## Screenshots

![1200px](screenshots/1200.png)

On smaller screens, the sidebar is pushed to the bottom. Here is the top of the
page at a width of 480px:

![480px](screenshots/480.png)

And here is the bottom:

![480px bottom](screenshots/480-bottom.png)
