CREATE FUNCTION api.authenticate (email text, password text)
  RETURNS api.jwt
  AS $$
DECLARE
  account api_private.doctor_account;
BEGIN
  SELECT
    * INTO account
  FROM
    api_private.doctor_account
  WHERE
    doctor_account.email = authenticate.email;
  IF account.password_hash = crypt(password, account.password_hash) THEN
    RETURN ('emr_doctor',
      account.doctor_id,
      extract(epoch FROM (now() + interval '30 days')))::api.jwt;
  ELSE
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE plpgsql
STRICT
SECURITY DEFINER;