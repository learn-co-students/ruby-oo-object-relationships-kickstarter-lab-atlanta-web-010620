class Backer

    attr_reader :name

        

        def initialize(name)
            @name = name 
            @projects = []
        end

    def back_project(project)
        ProjectBacker.new(project, self)
       @projects << project 
    end

    def backed_projects
        @projects
    end
end

