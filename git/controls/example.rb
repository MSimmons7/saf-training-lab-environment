# encoding: utf-8
# copyright: 2018, The Authors

git_dir = "/workspaces/saf-training-lab-environment/resources/git_test/.git"

# The following banches should exist
describe git(git_dir) do
  its('branches') { should include 'master' }
  its('branches') { should include 'testBranch' }
  its('current_branch') { should cmp 'master' }
end

# What is the latest commit
git_obj = git(git_dir)
# describe git_obj do
#   its('commits') { should include /edc207f/ }
#   subject {git_obj.commits[1]} 
#   it { should match /8c30bff/ }
# end

# Written in RSpec
describe "The git commit history" do
  it "First commit should be edc207f" do
    expect(git_obj.commits[0]).to match(/edc207f/)
  end
  it "Second commit should be 8c30bff" do
    expect(git_obj.commits[1]).to match(/8c30bff/)
  end
end