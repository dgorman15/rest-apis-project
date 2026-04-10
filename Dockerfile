FROM python:3.10                
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]



# 1.  # start from a base docker image that already has Python 3.10 installed.
#2. # Document that the container will listen on port 5000
#3. # set /app as the working directory inside the container
#4. # copy the requirements.txt file from my local machine into the container
#5. # Install all python dependencies listed in requirements.txt
#6. # Copy all the files from your project directory into the containers /app folder
#7. Start the flask development server and allow it to accept connections from outside the container