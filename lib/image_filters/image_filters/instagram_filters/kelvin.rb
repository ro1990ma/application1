module ImageFilters
	module InstagramFilters
		class Kelvin < BaseFilter
			def self.apply(source_file, output_file)
				call_script self.name.demodulize, source_file, output_file
			end
		end
	end
end
