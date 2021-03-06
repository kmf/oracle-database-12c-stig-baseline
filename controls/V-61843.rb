control "V-61843" do
  title "Applications must obscure feedback of authentication information
  during the authentication process to protect the information from possible
  exploitation/use by unauthorized individuals."
  desc  "To prevent the compromise of authentication information, such as
  passwords, during the authentication process, the feedback from the information
  system shall not provide any information that would allow an unauthorized user
  to compromise the authentication mechanism.

      Obfuscation of user-provided information when typed into the system is a
  method used in addressing this risk.

      For example, displaying asterisks when a user types in a password, is an
  example of obscuring feedback of authentication information.

      Database applications may allow for entry of the account name and password
  as a visible parameter of the application execution command. This practice
  should be prohibited and disabled to prevent shoulder surfing.

      This calls for inspection of application source code, which will require
  collaboration with the application developers. It is recognized that in many
  cases, the database administrator (DBA) is organizationally separate from the
  application developers and may have limited, if any, access to source code.
  Nevertheless, protections of this type are so important to the secure operation
  of databases that they must not be ignored. At a minimum, the DBA must attempt
  to obtain assurances from the development organization that this issue has been
  addressed and must document what has been discovered.
  "
  impact 0.7
  tag "gtitle": "SRG-APP-000178-DB-000083"
  tag "gid": "V-61843"
  tag "rid": "SV-76333r2_rule"
  tag "stig_id": "O121-N1-015601"
  tag "fix_id": "F-67759r1_fix"
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
  tag "check": "Interview the DBA to determine if any applications that access
  the database allow for entry of the account name and password on the command
  line. If any do, determine whether these applications obfuscate authentication
  data.  If they do not, this is a finding."
  tag "fix": "Configure or modify applications to prohibit display of passwords
  in clear text on the command line."
  describe 'A manual review is required to ensure the applications obscures feedback of authentication information
    during the authentication process to protect the information from possible
    exploitation/use by unauthorized individuals' do
    skip 'A manual review is required to ensure the applications obscures feedback of authentication information
    during the authentication process to protect the information from possible
    exploitation/use by unauthorized individuals'
  end
end

