control "V-61557" do
  title "The system must employ automated mechanisms for supporting Oracle user
  account management."
  desc  "A comprehensive application account management process that includes
  automation helps to ensure accounts designated as requiring attention are
  consistently and promptly addressed. Examples include, but are not limited to,
  using automation to take action on multiple accounts designated as inactive,
  suspended, or terminated, or by disabling accounts located in non-centralized
  account stores, such as multiple servers.

      Enterprise environments make application user account management
  challenging and complex.  A user management process requiring administrators to
  manually address account management functions adds risk of potential oversight.

      Automated mechanisms may be comprised of differing technologies that when
  placed together contain an overall automated mechanism supporting an
  organization's automated account management requirements.

      Databases can have large numbers of users in disparate locations and job
  functions.  Automatic account management can help mitigate the risk of human
  error found in manually managing database access.

      Note that user authentication and account management must be done via an
  enterprise-wide mechanism whenever possible.  Examples of enterprise-level
  authentication/access mechanisms include, but are not limited to, Active
  Directory and LDAP. This requirement applies to cases where it is necessary to
  have accounts directly managed by Oracle.
  "
  impact 0.5
  tag "gtitle": "SRG-APP-000023-DB-000001"
  tag "gid": "V-61557"
  tag "rid": "SV-76047r2_rule"
  tag "stig_id": "O121-C2-001800"
  tag "fix_id": "F-67473r2_fix"
  tag "cci": ["CCI-000015"]
  tag "nist": ['AC-2 (1)', 'Rev_4']
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

  If an Oracle feature/product, an OS feature, a third-party product, or custom
  code is used to automate account management, this is not a finding.

  Determine what the site-defined definition of an acceptably small level of
  manual account-management activity is.  If the site has established the
  definition, documented it, and obtained ISSO-ISSM-AO approval, use that
  definition.  If not, use the following rule of thumb as the definition:  no
  more than 12 such accounts exist or are expected to exist; no more than 100
  manual account-management actions (account creation, modification, locking,
  unlocking, removal and the like) are expected to occur in the course of a year.

  If the amount of account management activity is small, as defined in the
  preceding paragraph, this is not a finding.

  Otherwise, this is a finding."
  tag "fix": "Utilize an Oracle feature/product, an OS feature, a third-party
  product, or custom code to automate some or all account maintenance
  functionality.

  - - - - -

  Roles and Profiles are two Oracle features that should be employed in account
  management. (Indeed, other requirements mandate the use of Roles.) Following
  are some notes from Oracle on the use of Profiles.

  A profile is a named set of resource limits and password parameters that
  restrict database usage and instance resources for a user. You can assign a
  profile to each user, and a default profile to all others. Each user can have
  only one profile, and creating a new one supersedes any earlier one.

  Profile resource limits are enforced only when you enable resource limitation
  for the associated database. Enabling such limitation can occur either before
  starting up the database (the RESOURCE_LIMIT initialization parameter) or while
  it is open (using an ALTER SYSTEM statement).

  While password parameters reside in profiles, they are unaffected by
  RESOURCE_LIMIT or ALTER SYSTEM and password management is always enabled."
  describe 'A manual review is required to ensure the system must employs automated mechanisms for supporting Oracle user
    account management' do 
    skip 'A manual review is required to ensure the system must employs automated mechanisms for supporting Oracle user
    account management'
  end
end

