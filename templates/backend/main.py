from fastapi import FastAPI
app = FastAPI(title="Board LAN Hub")

@app.get('/api/health')
def health():
    return {"status": "ok"}
