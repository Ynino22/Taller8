FROM python:3.12-slim
WORKDIR /app
COPY ./bankchurn-api /app
RUN pip install --upgrade pip
RUN pip install ./model-pkg/model_abandono-0.0.1-py3-none-any.whl
RUN pip install -r requirements.txt
EXPOSE 8001
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8001"]


