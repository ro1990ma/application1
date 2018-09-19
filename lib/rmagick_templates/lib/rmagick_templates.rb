require 'rmagick'
require 'rmagick_templates/collage'
require 'rmagick_templates/gif_animation'
require 'rmagick_templates/outline_mask'
require 'rmagick_templates/screening'
require 'rmagick_templates/text_mask'
require 'rmagick_templates/version'
require 'rmagick_templates/youtube_channel_art'
require 'rmagick_templates/svg_template'
require 'rmagick_templates/thumbnail1'
require 'rmagick_templates/thumbnail2'
require 'rmagick_templates/thumbnail3'
require 'rmagick_templates/thumbnail4'
require 'rmagick_templates/thumbnail5'
require 'rmagick_templates/thumbnail6'
require 'rmagick_templates/thumbnail7'
require 'rmagick_templates/thumbnail8'
require 'rmagick_templates/thumbnail9'
require 'rmagick_templates/thumbnail10'
require 'rmagick_templates/thumbnail11'
require 'rmagick_templates/thumbnail14'
require 'rmagick_templates/thumbnail15'
require 'rmagick_templates/thumbnail16'
require 'rmagick_templates/thumbnail17'
require 'rmagick_templates/thumbnail18'
require 'rmagick_templates/thumbnail19'
require 'rmagick_templates/thumbnail20'
require 'rmagick_templates/thumbnail21'
require 'rmagick_templates/thumbnail22'
require 'rmagick_templates/thumbnail23'
require 'rmagick_templates/thumbnail24'
require 'rmagick_templates/thumbnail25'
require 'rmagick_templates/thumbnail26'
require 'rmagick_templates/thumbnail27'
require 'rmagick_templates/thumbnail28'
require 'rmagick_templates/thumbnail29'
require 'rmagick_templates/thumbnail30'
require 'rmagick_templates/thumbnail31'
require 'rmagick_templates/thumbnail32'
require 'rmagick_templates/thumbnail33'
require 'rmagick_templates/google_plus_art1'
require 'rmagick_templates/google_plus_art2'
require 'rmagick_templates/google_plus_art4'
require 'rmagick_templates/google_plus_art5'
require 'rmagick_templates/google_plus_art6'
require 'rmagick_templates/google_plus_art7'
require 'rmagick_templates/google_plus_art8'
require 'rmagick_templates/google_plus_art9'
require 'rmagick_templates/google_plus_art10'
require 'rmagick_templates/youtube_channel_art1'
require 'rmagick_templates/youtube_channel_art2'
require 'rmagick_templates/youtube_channel_art3'
require 'rmagick_templates/youtube_channel_art4'
require 'rmagick_templates/youtube_channel_art5'
require 'rmagick_templates/youtube_channel_art6'
require 'rmagick_templates/youtube_channel_art7'
require 'rmagick_templates/youtube_channel_art8'
require 'rmagick_templates/youtube_channel_art9'
require 'rmagick_templates/youtube_channel_art10'
require 'rmagick_templates/artifacts_image1'
require 'rmagick_templates/artifacts_image2'
require 'rmagick_templates/artifacts_image3'
require 'rmagick_templates/artifacts_image4'
require 'rmagick_templates/artifacts_image5'
require 'rmagick_templates/artifacts_image6'
require 'rmagick_templates/utilities'

# module RmagickTemplates
# end

class Magick::Pixel
    def contrast
        offset = 0xffff / 3
        '#' + [ red, green, blue ].map { |channel|
            (channel > offset ? channel - offset : channel + offset * 2).to_s(16).rjust(4, '0')
        }.join
    end
end