module MoviesHelper
    def sort_link(column, title = nil)
        title ||= column.titleize
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        css_class = column == sort_column ? "active_column_#{sort_direction}" : "list_header"

        link_text = if column == sort_column
            "#{title} #{direction == "asc" ? "▲" : "▼"}"
        else
            title
        end

        link_to link_text.html_safe, { column: column, direction: direction }, class: css_class
    end
end
