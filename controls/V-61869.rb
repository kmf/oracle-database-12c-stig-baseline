control "V-61869" do
  title "The OS must limit privileges to change the DBMS software resident
  within software libraries (including privileged programs)."
  desc  "When dealing with change control issues, it should be noted, any
  changes to the hardware, software, and/or firmware components of the
  information system and/or application can potentially have significant effects
  on the overall security of the system.

      If the application were to allow any user to make changes to software
  libraries, then those changes might be implemented without undergoing the
  appropriate testing and approvals that are part of a robust change management
  process.

      This requirement is contingent upon the language in which the application
  is programmed, as many application architectures in use today incorporate their
  software libraries into, and make them inseparable from, their compiled
  distributions, rendering them static and version-dependent.  However, this
  requirement does apply to applications with software libraries accessible and
  configurable as in the case of interpreted languages.

      Accordingly, only qualified and authorized individuals shall be allowed to
  obtain access to information system components for purposes of initiating
  changes, including upgrades and modifications.

      The DBMS software libraries contain the executables used by the DBMS to
  operate. Unauthorized access to the libraries can result in malicious
  alteration. This may in turn jeopardize data stored in the DBMS and/or
  operation of the host system.
  "
  impact 0.5
  tag "gtitle": "SRG-APP-000133-DB-000207"
  tag "gid": "V-61869"
  tag "rid": "SV-76359r1_rule"
  tag "stig_id": "O121-OS-011200"
  tag "fix_id": "F-67785r1_fix"
  tag "cci": ["CCI-001499"]
  tag "nist": ['CM-5 (6)', 'Rev_4']
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
  tag "check": "Review permissions that control access to the DBMS software
  libraries. The software library location may be determined from vendor
  documentation or service/process executable paths.

  DBA accounts, the DBMS process account, the DBMS software
  installation/maintenance account, SA accounts, if access by them is required
  for some operational level of support such as backups, and the host system
  itself require access. Any others should be scrutinized and a reason for access
  provided by the DBA.

  If accounts that are not required and authorized to have access to the software
  library location do have access, this is a finding.

  Check to see which users have been granted DBA.  Work from a basis of least
  privilege.  Provide the least amount of privilege required to accomplish the
  job.

  SQL> select * from dba_role_privs where granted_role = 'DBA';"
  tag "fix": "Restrict access to the DBMS software libraries to accounts that
  require access based on job function."
end

