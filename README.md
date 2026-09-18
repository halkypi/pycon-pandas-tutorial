
# Welcome to Brandon’s Pandas Tutorial

The first instance of this tutorial was delivered at PyCon 2015 in
Montréal, but I hope that many other people will be able to benefit from
it over the next few years — both on occasions on which I myself get to
deliver it, and also when other instructors are able to do so.

If you want to follow along with the tutorial at home, here is the
YouTube recording of the 3-hour tutorial at PyCon itself:

[![Watch the video tutorial on YouTube](youtube.png)](http://www.youtube.com/watch?v=5JnMutdy6Fw "Pandas From The Ground Up - PyCon 2015")

https://www.youtube.com/watch?v=5JnMutdy6Fw

To make it useful to as many people as possible, I hereby release it
under the MIT license (see the accompanying `LICENSE.txt` file) and I
have tried to make sure that this repository contains all of the scripts
needed to download and set up the data set that we used.

## Quick Start

If you have both `uv` and `git` on your system (otherwise, read the
next section for more detailed instructions):

    $ git clone https://github.com/halkypi/pycon-pandas-tutorial.git
    $ cd pycon-pandas-tutorial
    $ bash requirements.sh
    $ source .venv/bin/activate
    $ build/BUILD.sh
    $ jupyter notebook

## Detailed Instructions

You will need Pandas, Jupyter Notebook, and Matplotlib installed
before you can successfully run the tutorial notebooks.  The [Anaconda
Distribution](https://www.anaconda.com/download/) is a great way to get up
and running quickly without having to install them each separately —
or use the `uv` setup above, tested with Python 3.13 and pandas 3.0.6.

Note that having `git` is not necessary for getting the materials.
Simply click the “Download ZIP” button over on the right-hand side of
this repository’s front page at the following link, and its files will
be delivered to you as a ZIP archive:

https://github.com/brandon-rhodes/pycon-pandas-tutorial

Once you have unpacked the ZIP file, download the following four
[IMDB](https://www.imdb.com/) data files and place them in the
tutorial’s `build` directory:

* https://ftp.fu-berlin.de/pub/misc/movies/database/frozendata/actors.list.gz
* https://ftp.fu-berlin.de/pub/misc/movies/database/frozendata/actresses.list.gz
* https://ftp.fu-berlin.de/pub/misc/movies/database/frozendata/genres.list.gz
* https://ftp.fu-berlin.de/pub/misc/movies/database/frozendata/release-dates.list.gz

If the above links don’t work for you, try these alternate sources of the same files:

* https://www.nic.funet.fi/pub/mirrors/ftp.imdb.com/pub/frozendata/actors.list.gz
* https://www.nic.funet.fi/pub/mirrors/ftp.imdb.com/pub/frozendata/actresses.list.gz
* https://www.nic.funet.fi/pub/mirrors/ftp.imdb.com/pub/frozendata/genres.list.gz
* https://www.nic.funet.fi/pub/mirrors/ftp.imdb.com/pub/frozendata/release-dates.list.gz

To convert these into the CSV files that the tutorial needs, run the
`BUILD.py` script with Python 3.  It will create the
three CSV files in the `data` directory that you need to run all of the
tutorial examples.  It should take about 5 minutes to run on a fast
modern machine:

    $ python build/BUILD.py

You can then start up Jupyter Notebook and start looking at the
notebooks:

    $ jupyter notebook

I hope that the recording and the exercises in this repository prove
useful if you are interested in learning more about Python and its data
analysis capabilities!

— [Brandon Rhodes](http://rhodesmill.org/brandon/)

## Maintaining this fork

The numbered solution notebooks are the teaching sources for the numbered
exercises. `python build/split.py` regenerates the exercises from those solutions;
run it only when intentionally updating exercises. `All.ipynb` is an older
exploratory collection, not a generated concatenation of the numbered lessons.
`images/Diagrams.ipynb` is auxiliary material; run it from `images/`. Its unsorted
MultiIndex slice deliberately raises an error before the sorted example.

The frozen IMDb files preserve the original tutorial dataset and filters; counts
can differ from the 2015 recording. The downloads total roughly 640 MB compressed.
The diagram Makefile additionally requires Graphviz, wkhtmltoimage, and ImageMagick.
`images/loop.sh` used an instructor-local `,make-loop` helper; use `make -C images`
for a one-shot build instead. The original pre-course email is historical.
