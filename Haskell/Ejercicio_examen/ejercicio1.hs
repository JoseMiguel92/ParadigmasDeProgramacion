module EjercicioExamen where 
--sinonimos para las mesas (libres y ocupadas)
type MesasL = [Mesa]
type MesasO = [Mesa]
data Mesa = Mesa {numMesa::Int,capacida::Int}
data Ocupacion = Ocup MesasL MesasO

insertarMesaLibre :: Ocupacion -> Mesa -> Ocupacion
