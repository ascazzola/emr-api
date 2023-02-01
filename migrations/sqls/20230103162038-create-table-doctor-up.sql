CREATE TABLE api.doctor (
    id uuid  PRIMARY KEY DEFAULT uuid_generate_v4 (),
    dni text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    registration_number text NOT NULL,
    specialty text not NULL,
    created_at timestamp without time zone default (now() at time zone 'utc')
);