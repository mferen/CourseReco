FROM python:3.8.18-bullseye

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN pip install streamlit 

RUN pip install matplotlib

ENTRYPOINT ["streamlit","run", "main.py"]

EXPOSE 8501  
