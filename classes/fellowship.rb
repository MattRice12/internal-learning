class Fellowship
  attr_accessor :members

  def initialize(members)
    @members = members
  end

  def add_member(member)
    members.push(member)
  end
end
