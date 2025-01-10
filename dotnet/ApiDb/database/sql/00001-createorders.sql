--liquibase formatted sql

--changeset user:00001
--comment: orders table contains order information.

CREATE TABLE IF NOT EXISTS public.orders
(
    id SERIAL NOT NULL,
    name VARCHAR(255) NOT NULL,
    CONSTRAINT pk_id PRIMARY KEY (id)
)

--rollback DROP TABLE IF EXISTS orders;