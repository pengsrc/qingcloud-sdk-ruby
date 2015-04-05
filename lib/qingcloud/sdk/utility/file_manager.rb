require 'fileutils'
require 'pathname'

module QingCloud
    module SDK
        module Utility

            def self.file_manager
                unless self.class_variable_defined? '@@file_manager'
                    FileUtils.mkdir_p Contract::CONFIG_FILE_DIRECTORY
                    @@file_manager = FileManager.new
                end
                @@file_manager
            end

            class FileManager

                def read_config_file
                    read_file Contract::CONFIG_FILE_PATH
                end

                def write_config_file(content)
                    write_file Contract::CONFIG_FILE_PATH, content
                end

                def create_new_config_file
                    new_config_file = read_file Contract::TEMPLATE_CONFIG_FILE_PATH
                    write_file Contract::CONFIG_FILE_PATH, new_config_file
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