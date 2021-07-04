class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_list = ProjectBacker.all.select{ |pairing| pairing.backer == self}
        project_list.map {|pairing| pairing.project}
    end

end