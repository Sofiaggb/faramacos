from fastapi_offline import FastAPIOffline 
# from fastapi.middleware.cors import CORSMiddleware
from starlette.middleware.cors import CORSMiddleware
from config.config import motor
from models import models
from routes.routesTipo import tipos
from routes.routesFarmaco import farmacos


#Ejecutar la creación del modelo en la BD
models.Base.metadata.create_all(bind=motor)

app = FastAPIOffline(
    title = 'Proyecto para administrar farmacos',
    description = 'Acreditable II',
    version = '1.0')



origins = [
    "http://localhost:5173"  # Tu front-end
]

# Coloca el middleware CORSMiddleware antes de las rutas
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],  # Permite todos los métodos
    allow_headers=["*"],  # Permite todos los encabezados
)

@app.get('/')
def index():
    return {'mensaje': 'FastAPI funcionando'}

# Incluye el router de farmacos y tipos en la aplicación principal
app.include_router(tipos)
app.include_router(farmacos)
