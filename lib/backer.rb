class Backer
    attr_reader :name

    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        project_backer.collect do |pb|
            pb.project
        end
    end

    
    
end