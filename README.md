# ad-recipes

Scripts allowing fast setup of various environments on alwaysdata

# Web frontend

Prepare the virtualenv:

    make virtualenv
    . env/bin/activate
    pip install -r frontend-requirements.txt

Run the web frontend in a local server (debug mode enabled):

    python -m frontend
