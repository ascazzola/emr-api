CREATE FUNCTION api.register_doctor (dni text, first_name text, last_name text, registration_number text, specialty text, 
email text, password text)
  RETURNS api.doctor
  AS $$
DECLARE
  doctor api.doctor;
BEGIN
    INSERT INTO api.doctor
        (dni, first_name, last_name, registration_number, specialty)
    VALUES
        (dni, first_name, last_name, registration_number, specialty)
    RETURNING
    * INTO doctor;
INSERT INTO api_private.doctor_account
    (doctor_id, email, password_hash)
VALUES
    (doctor.id, email, crypt(password, gen_salt('bf')));
RETURN doctor;
END;
$$
LANGUAGE plpgsql
STRICT
SECURITY DEFINER;