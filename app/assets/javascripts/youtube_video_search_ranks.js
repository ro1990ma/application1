//= require jquery-live-preview
//= require fancybox
window.youtube_video_search_ranks_index = function(){
  fancybox_settings = {
    helpers: {
      title : {
        type : 'float'
      }
    }
  }
  $(".image-preview").fancybox(fancybox_settings);

  $('.livepreview.left-livepreview').livePreview({
    position: 'left'
  });
  $('.livepreview').livePreview();

  $('select').select2({ allowClear: true });
  $('.select2-container').addClass('form-control');

  var order_by = $('#filter_order');
  var order_type = $('#filter_order_type');
  var th = $('#' + order_by.val() + '-th');

  if (th !== 'undefined') th.addClass('sort_' + order_type.val());

  var filter = $('#filter');
  var filter_settings = $('#filter_settings');

  filter.click(function () {
    var open = false;
    if (!$(this).hasClass("open")) {
      $(this).animate({ 'right': '250px' });
      filter_settings.animate({ 'right': '0' });
      $(this).addClass("open");
      open = true;
    } else {
      $(this).animate({ 'right': '0' });
      filter_settings.animate({ 'right': '-250px' });
      $(this).removeClass("open");
    }

    if (typeof(Storage) != 'undefined') {
      if (open) {
        localStorage.setItem('youtube-video-search-ranks-filter-settings-open', 'true');
      } else {
        localStorage.setItem('youtube-video-search-ranks-filter-settings-open', 'false');
      }
    } else {
      console.log('Sorry, your browser does not support Web Storage...');
    }
  });

  if (typeof(Storage) != 'undefined' && localStorage.getItem('youtube-video-search-ranks-filter-settings-open') == 'true') {
    filter.animate({ 'right': '250px' });
    filter_settings.animate({ 'right': '0' });
    filter.addClass("open");
  }

  $('#youtube_video_search_ranks_table th').on('click', function () {
    if ($(this).hasClass('sort')) {
      var data_field = $(this).attr('data-field');
      if ($(this).hasClass('sort_asc')) {
        $('#youtube_video_search_ranks_table th').removeClass('sort_asc').removeClass('sort_desc');
        $(this).removeClass('sort_asc').addClass('sort_desc');
        order_type.select2('val', 'desc');
      } else {
        $('#youtube_video_search_ranks_table th').removeClass('sort_asc').removeClass('sort_desc');
        $(this).removeClass('sort_desc').addClass('sort_asc');
        order_type.select2('val', 'asc');
      }
      order_by.select2('val', data_field);
      $('#filters_form').submit();
    }
  });

  $(document).ready(function () {
    $('.numeric').keypress(function (e) {
      if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) return false;
    });
  });
}
