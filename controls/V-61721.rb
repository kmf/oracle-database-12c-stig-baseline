control "V-61721" do
  title "The DBMS must support organizational requirements to prohibit password
  reuse for the organization-defined number of generations."
  desc  "Password complexity, or strength, is a measure of the effectiveness of
  a password in resisting attempts at guessing and brute-force attacks.

      To meet password policy requirements, passwords need to be changed at
  specific policy-based intervals.

      If the information system or application allows the user to consecutively
  reuse their password when that password has exceeded its defined lifetime, the
  end result is a password that is not changed as per policy requirements.

      Password reuse restrictions protect against bypass of password expiration
  requirements and help protect accounts from password guessing attempts.

      Note that user authentication and account management must be done via an
  enterprise-wide mechanism whenever possible.  Examples of enterprise-level
  authentication/access mechanisms include, but are not limited to, Active
  Directory and LDAP. This requirement applies to cases where it is necessary to
  have accounts directly managed by Oracle.
  "
  impact 0.5
  tag "gtitle": "SRG-APP-000165-DB-000081"
  tag "gid": "V-61721"
  tag "rid": "SV-76211r2_rule"
  tag "stig_id": "O121-C2-014000"
  tag "fix_id": "F-67637r2_fix"
  tag "cci": ["CCI-000200"]
  tag "nist": ['IA-5 (1) (e)', 'Rev_4']
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "If all user accounts are authenticated by the OS or an
  enterprise-level authentication/access mechanism, and not by Oracle, this is
  not a finding.

  For each profile that can be applied to accounts where authentication is under
  Oracle's control, determine the password reuse rule, if any, that is in effect:
  SELECT * FROM SYS.DBA_PROFILES
  WHERE RESOURCE_NAME IN ('PASSWORD_REUSE_MAX', 'PASSWORD_REUSE_TIME')
  [AND PROFILE NOT IN (<list of non-applicable profiles>)]
  ORDER BY PROFILE, RESOURCE_NAME;
  Bearing in mind that a profile can inherit from another profile, and the root
  profile is called DEFAULT, determine the value of the PASSWORD_REUSE_MAX
  effective for each profile.

  If, for any profile, the PASSWORD_REUSE_MAX value does not enforce the
  DoD-defined minimum number of password changes before a password may be
  repeated (five or greater), this is a finding.

  PASSWORD_REUSE_MAX is effective if and only if PASSWORD_REUSE_TIME is
  specified, so if both are UNLIMITED, this is a finding."
  tag "fix": "If all user accounts are authenticated by the OS or an
  enterprise-level authentication/access mechanism, and not by Oracle, no fix to
  the DBMS is required.

  If any user accounts are managed by Oracle:  For each profile, set the
  PASSWORD_REUSE_MAX to enforce the DoD-defined minimum number of password
  changes before a password may be repeated (five or greater).

  PASSWORD_REUSE_MAX is effective if and only if PASSWORD_REUSE_TIME is
  specified, so ensure also that it has a meaningful value.  Since the minimum
  password lifetime is 1 day, the smallest meaningful value is the same as the
  PASSWORD_REUSE_MAX value.

  Using PPPPPP as an example, the statement to do this is:
  ALTER PROFILE PPPPPP LIMIT PASSWORD_REUSE_MAX 5 PASSWORD_REUSE_TIME 5;"
end

