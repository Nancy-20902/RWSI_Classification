FROM python:3.11-slim

RUN pip install jupyter numpy pandas matplotlib seaborn

WORKDIR /app

COPY code.ipynb /app/

RUN jupyter nbconvert --to script code.ipynb

EXPOSE 8888

CMD ["jupyter", "notebook", "code.py", "--ip=0.0.0.0", "--no-browser", "--allow-root"]