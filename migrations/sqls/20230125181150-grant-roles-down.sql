ALTER DEFAULT privileges GRANT EXECUTE ON functions FROM public;

REVOKE usage ON SCHEMA api TO emr_anonymous, emr_doctor;

REVOKE EXECUTE ON FUNCTION api.register_doctor (text, text, text, text, text, text, text) TO emr_anonymous;
REVOKE EXECUTE ON FUNCTION api.authenticate (text, text) TO emr_anonymous, emr_doctor;

REVOKE ALL privileges ON TABLE api.doctor TO emr_doctor;
REVOKE ALL privileges ON TABLE api.patient TO emr_doctor;
REVOKE ALL privileges ON TABLE api.medical_report TO emr_doctor;
REVOKE ALL privileges ON TABLE api.study TO emr_doctor;