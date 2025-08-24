# backend/main.py
from fastapi import FastAPI
from .routers.did import router as did_router

app = FastAPI()
app.include_router(did_router, prefix="/api")

@app.get("/")
async def root():
    return {"message": "AetherLatticia API is live!"}
