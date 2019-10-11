module ApplicationHelper
  def pluralize_with_count(count, noun, text = nil)
    if count != 0
      "#{count} " + (count == 1 ? "#{noun}" : "#{noun.pluralize}") + " #{text}"
    end
  end
  def pluralize_without_count(count, noun, text = nil)
    if count != 0
      (count == 1 ? "#{noun}" : "#{noun.pluralize}") + " #{text}"
    end
  end
end
