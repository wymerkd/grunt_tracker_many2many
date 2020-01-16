require 'rails_helper'

describe Project do
  it { should have_and_belong_to_many :employees }
  it ( "creates a new project") do
    project = Project.create({name: "Giant Steps"})
      expect(project.name()).to(eq("Giant Steps"))
  end
  it ( "updates a project") do
    project = Project.create({name: "Giant Steps"})
    project.update({name: "Lil' Steps"})
      expect(project.name()).to(eq("Lil' Steps"))
  end
  it ( "destroys a project") do
    project = Project.create({name: "Giant Steps"})
    project.destroy
      expect(Project.all()).to(eq([]))
  end
end
