class Backer 
    attr_reader :name 
    def initialize(name) 
        @name = name 
        @my_projects = [] 
    end
    
    def back_project(project) 
        a = ProjectBacker.new(project,self)
        @my_projects << project
    end

    def backed_projects 
        @my_projects
    end
end 