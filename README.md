Opa on dotCloud!
================

Minimal example
-------------------

    git clone https://github.com/cedricss/opa-on-dotcloud.git
    dotcloud create myapp
    dotcloud push myapp opa-on-dotcloud

The repos contains an simple `app.opa` example code (see below for a more complex app).

MVC wiki application
---------------------

To try a more complex example, checkout the `origin/wiki_mvc` branch and push:

    cd opa-on-dotcloud
    git checkout origin/wiki_mvc
    dotcloud push myapp    

This branch contains a `Makefile` and a `opa.conf`: those files are ready to be hacked to build a well-organized application.

Caveat
-------

- the first push is slow because Opa compiler is being installed the first time. Further pushes are faster.
- the database has to be named `admin` to use the default dotcloud authenfication to mongoDB.
