CREATE TABLE api.medical_report(
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
  patient_id uuid  REFERENCES api.patient (id),
  doctor_id uuid REFERENCES api.doctor (id),
  symptoms text NOT NULL,
  evolution text,
  created_at timestamp without time zone default (now() at time zone 'utc')
);