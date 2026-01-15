CREATE TABLE vuelo (
    id BIGSERIAL PRIMARY KEY,
    aerolinea_id BIGINT NOT NULL,
    origen_id BIGINT NOT NULL,
    destino_id BIGINT NOT NULL,
    fecha_partida TIMESTAMP NOT NULL,
    distancia_km INTEGER NOT NULL,

    CONSTRAINT fk_vuelo_aerolinea
        FOREIGN KEY (aerolinea_id)
        REFERENCES aerolinea(id),

    CONSTRAINT fk_vuelo_origen
        FOREIGN KEY (origen_id)
        REFERENCES aeropuerto(id),

    CONSTRAINT fk_vuelo_destino
        FOREIGN KEY (destino_id)
        REFERENCES aeropuerto(id)
);