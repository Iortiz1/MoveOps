from fastapi import FastAPI

app = FastAPI(
    title="MoveOps API",
    description="Backend service for the MoveOps DevOps project",
    version="0.1.0"
)

@app.get("/")
def root():
    return {"message": "MoveOps backend running"}

@app.get("/health")
def health():
    return {"status": "ok"}

