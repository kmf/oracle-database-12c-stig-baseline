control "V-61677" do
  title "Default demonstration and sample databases, database objects, and
  applications must be removed."
  desc  "Information systems are capable of providing a wide variety of
  functions and services. Some of the functions and services, provided by
  default, may not be necessary to support essential organizational operations
  (e.g., key missions, functions).

      It is detrimental for applications to provide, or install by default,
  functionality exceeding requirements or mission objectives. Examples include,
  but are not limited to, installing advertising software, demonstrations, or
  browser plugins not related to requirements or providing a wide array of
  functionality not required for the mission.

      Applications must adhere to the principles of least functionality by
  providing only essential capabilities.

      Demonstration and sample database objects and applications present publicly
  known attack points for malicious users. These demonstration and sample objects
  are meant to provide simple examples of coding specific functions and are not
  developed to prevent vulnerabilities from being introduced to the DBMS and host
  system.
  "
  impact 0.5
  tag "gtitle": "SRG-APP-000141-DB-000090"
  tag "gid": "V-61677"
  tag "rid": "SV-76167r3_rule"
  tag "stig_id": "O121-C2-011500"
  tag "fix_id": "F-67591r1_fix"
  tag "cci": ["CCI-000381"]
  tag "nist": ['CM-7 a', 'Rev_4']
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
  tag "check": "If Oracle is hosted on a server that does not support
  production systems, and is designated for the deployment of samples and
  demonstrations, this is not applicable (NA).

  Review documentation and websites from Oracle and any other relevant vendors
  for vendor-provided demonstration or sample databases, database applications,
  schemas, objects, and files.

  Review the Oracle DBMS to determine if any of the demonstration and sample
  databases, schemas, database applications, or files are installed in the
  database or are included with the DBMS application. If any are present in the
  database or are included with the DBMS application, this is a finding.

  The Oracle Default Sample Schema User Accounts are:

  BI
  Owns the Business Intelligence schema included in the Oracle Sample Schemas.

  HR
  Manages the Human Resources schema. Schema stores information about the
  employees and the facilities of the company.

  OE
  Manages the Order Entry schema. Schema stores product inventories and sales of
  the company's products through various channels.

  PM
  Manages the Product Media schema. Schema contains descriptions and detailed
  information about each product sold by the company.

  IX
  Manages the Information Exchange schema. Schema manages shipping through
  business-to-business (B2B) applications database.

  SH
  Manages the Sales schema. Schema stores statistics to facilitate business
  decisions.

  SCOTT
  A demonstration account with a simple schema.

  Connect to Oracle as SYSDBA; run the following SQL to check for presence of
  Oracle Default Sample Schema User Accounts:
  select distinct(username) from dba_users where username in
  ('BI','HR','OE','PM','IX','SH','SCOTT');

  If any of the users listed above is returned it means that there are demo
  programs installed, so this is a finding.
  "
  tag "fix": "Remove any demonstration and sample databases, database
  applications, objects, and files from the DBMS.

  To remove an account and all objects owned by that account (using BI as an
  example):
  DROP USER BI CASCADE;

  To remove objects without removing their owner, use the appropriate DROP
  statement (DROP TABLE, DROP VIEW, etc.)."
end

