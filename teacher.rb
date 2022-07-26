class Teacher < Person
  def initialize(specialization, age, _name = 'unknown', parent_permission: true)
    super(specialization, name, age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
