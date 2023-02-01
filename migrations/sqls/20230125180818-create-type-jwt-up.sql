CREATE TYPE api.jwt AS (
  role text,
  doctor_id uuid,
  exp bigint
);