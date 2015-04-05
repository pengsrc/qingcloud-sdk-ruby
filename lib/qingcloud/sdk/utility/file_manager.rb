require 'fileutils'
require 'pathname'

module QingCloud
    module SDK
        module Utility

            def self.file_manager
                unless self.class_variable_defined? '@@file_manager'
                    @@file_manager = FileManager.new
                    @@file_manager.prepare_directory Contract::CONFIG_FILE_DIRECTORY
                end
                @@file_manager
            end

            class FileManager

                def prepare_directory(directory)
                    FileUtils.mkdir_p directory
                end

                def read_config_file
                    read_file Contract::CONFIG_FILE_PATH
                end

                def write_config_file(content)
                    write_file Contract::CONFIG_FILE_PATH, content
                end

                private

                def read_file(file_path)
                    File.open(file_path) { |file| return file.read } if File.exist? file_path
                end

                def write_file(file_path, content)
                    File.open(file_path, 'w') { |file| file.write content }
                end
            end
        end
    end
end