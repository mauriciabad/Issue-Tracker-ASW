class IndexIssueSerializer < IssueSerializer
  attribute :voted_by_current_user, if: :current_user?
  attribute :watched_by_current_user, if: :current_user?
  attributes :_links

  def current_user?
    true if current_user
  end

  def voted_by_current_user
    object.votes.exists?(current_user.id)
  end

  def watched_by_current_user
    object.watches.exists?(current_user.id)
  end

  def _links
    links = {
        self: { href: "/issues/#{object.id}" },
        creator: object.user.as_json_summary,
    }
    links
  end
end
