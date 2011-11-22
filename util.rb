
#
# Terminus-Bot: An IRC bot to solve all of the problems with IRC bots.
# Copyright (C) 2010 Terminus-Bot Development Team
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#



# Load all files in the given directory under the working directory.
# @param [String] dir The base directory from which files will be recursively required.
# @example
# require_files("includes")
def require_files(dir)
  #$log.debug('preload') { "Requiring files in #{dir}." }

  begin
    Dir["#{File.dirname(__FILE__)}/#{dir}/**/*.rb"].each { |f| require(f) }
  rescue => e
    #$log.fatal('preload') { "Failed loading files in #{dir}: #{e}" }
    exit -1
  end
end
