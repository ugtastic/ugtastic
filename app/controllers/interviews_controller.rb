class InterviewsController < ApplicationController
  def index
    @interviews = if params[:q].present?

                    @query = params[:q].strip
                    @header_title = "Interview Search: \"#{@query}\""

                    found_ids = PgSearch
                                .multisearch(@query)
                                .where(searchable_type: 'YouTube::Video')
                                .pluck(:searchable_id)
                                .uniq
                                .sort

                    YouTube::Video
                      .includes(:conference, :interviewees)
                      .published
                      .where('you_tube_videos.id in (?)', found_ids)
                      .order(id: 'asc')

                  else
                    YouTube::Video
                      .includes(:conference, :interviewees)
                      .published.order('priority desc, id asc')
                       end
  end

  def show
    @interview = YouTube::Video.friendly.find(params[:id])
  end
end
