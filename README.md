# T&#257;whirim&#257;tea

[![Documentation Status](https://readthedocs.org/projects/tawhiri/badge/?version=latest)](https://readthedocs.org/projects/tawhiri/?badge=latest)

## Introduction

Tawhiri is the name given to the next version of the CUSF Landing Prediction
Software, which will probably be different enough from the current version
(see below) to warrant a new name.

The name comes from a
[M&#257;ori](http://en.wikipedia.org/wiki/M%C4%81ori_people)
god of weather, which rather aptly
&ldquo;drove Tangaroa and his progeny into the sea &rdquo;
[(WP)](http://en.wikipedia.org/wiki/Tawhiri).

This repository is a fork of the original [CUSF repository](https://github.com/cuspaceflight/tawhiri) with the following additions:
* Docker container build scripts.
* Addition of 'reverse profile' predictions, allowing estimation of balloon launch sites.
* Addition of KML and CSV formatted responses.

An instance of this predictor is used within the [SondeHub](https://sondehub.org) Radiosonde and Amateur balloon tracking database and mapping system, with the main API available at: https://api.v2.sondehub.org/tawhiri

## More information

Please see the [CUSF wiki](http://www.cusf.co.uk/wiki/), which contains pages
on [Tawhiri](http://www.cusf.co.uk/wiki/tawhiri:start) and [prediction in
general](http://www.cusf.co.uk/wiki/landing_predictor).

[More detailed API and setup documentation](http://tawhiri.cusf.co.uk/).

## Setup

### Predictor

…is written for Python 3 (>3.6, due to the use of f-strings) and needs Cython:

```bash
$ virtualenv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
$ python setup.py build_ext --inplace
```

The last line (re-)builds the Cython extensions, and needs to be run again
after modifying any `.pyx` files.


### Downloader

The downloader was written before Python had good cooperative concurrency
support, and so is instead a [separate
application](https://github.com/cuspaceflight/tawhiri-downloader) in OCaml.

A containerised version of tawhiri-downloader is available here: https://github.com/projecthorus/tawhiri-downloader-container/

## License

Tawhiri is Copyright 2014 (see AUTHORS & individual files) and licensed under
the [GNU GPL 3](http://gplv3.fsf.org/) (see LICENSE).
