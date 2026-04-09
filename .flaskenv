FLASK_APP=app
FLASK_DEBUG=1

# 1 tells flask which file contains my application eg app. Look for a file called app.py and use the object app inside of it.
# 2 turns on debug mode, allows auto reloading when you save changes, detailed error pages, better logging. 

# IMPORTANT python-dotenv must be installed for this automatically work so thats why we hard code these variables


# 1. Browser sends request to localhost:5000
# 2. Docker catches it
# 3. Docker forwards it to container:5000
# 4. Flask app receives it
# 5. Flask sends response back
# 6. You see it in browser