CREATE TABLE prediccion (
    id BIGSERIAL PRIMARY KEY,
    vuelo_id BIGINT NOT NULL,
    prevision VARCHAR(50) NOT NULL,
    probabilidad DOUBLE PRECISION NOT NULL,
    latencia DOUBLE PRECISION,
    explicabilidad TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_prediccion_vuelo
        FOREIGN KEY (vuelo_id)
        REFERENCES vuelo(id)
        ON DELETE CASCADE
);