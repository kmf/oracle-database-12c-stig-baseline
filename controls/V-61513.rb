control "V-61513" do
  title "Replication accounts must not be granted DBA privileges."
  desc  "Replication accounts may be used to access databases defined for the
  replication architecture. An exploit of a replication on one database could
  lead to the compromise of any database participating in the replication that
  uses the same account name and credentials. If the replication account is
  compromised and it has DBA privileges, the database is at additional risk to
  unauthorized or malicious action."
  impact 0.5
  tag "gtitle": "SRG-APP-000516-DB-999900"
  tag "gid": "V-61513"
  tag "rid": "SV-76003r1_rule"
  tag "stig_id": "O121-BP-025500"
  tag "fix_id": "F-67429r1_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ['CM-6 b', 'Rev_4']
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
  tag "check": "If a review of the System Security Plan confirms the use of
  replication is not required, not permitted and the database is not configured
  for replication, this check is not a finding.

  If any replication accounts are assigned DBA roles or roles with DBA
  privileges, this is a finding."
  tag "fix": "Restrict privileges assigned to replication accounts to the
  fewest possible privileges.

  Remove DBA roles from replication accounts.

  Create and use custom replication accounts assigned least privileges for
  supporting replication operations."
end

