module Admin
  class VideosController < Admin::BaseController

    crudify :video, :xhr_paging => true

  end
end
