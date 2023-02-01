CREATE TABLE api_private.doctor_account (
  doctor_id uuid  PRIMARY KEY  REFERENCES api.doctor (id) ON DELETE CASCADE,
  email text NOT NULL UNIQUE CHECK (email ~* '^.+@.+\..+$'),
  password_hash text NOT NULL
);

CREATE INDEX doctor_account_email_idx ON api_private.doctor_account (email);