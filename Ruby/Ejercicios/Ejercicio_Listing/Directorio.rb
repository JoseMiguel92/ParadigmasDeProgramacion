class Directorio

    def initialize(ruta)
        @nombre = ruta
    end

    def list_files
    end

    def list_ordered_files
    end

    def list_directories
    end

    def list_size_files(size)
    end

    def get_size
    end

    def list_files_directories_date(date)
    end

    def to_s
        "#{@nombre}"
    end
end