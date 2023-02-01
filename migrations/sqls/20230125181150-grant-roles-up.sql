ALTER DEFAULT privileges REVOKE EXECUTE ON functions FROM public;

GRANT usage ON SCHEMA api TO emr_anonymous, emr_doctor;

GRANT EXECUTE ON FUNCTION api.register_doctor (text, text, text, text, text, text, text) TO emr_anonymous;
GRANT EXECUTE ON FUNCTION api.authenticate (text, text) TO emr_anonymous, emr_doctor;

GRANT ALL privileges ON TABLE api.doctor TO emr_doctor;
GRANT ALL privileges ON TABLE api.patient TO emr_doctor;
GRANT ALL privileges ON TABLE api.medical_report TO emr_doctor;
GRANT ALL privileges ON TABLE api.study TO emr_doctor;