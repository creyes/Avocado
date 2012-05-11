module UsersHelper
def nested_messages(messages)
    messages.map do |message, sub_messages|
        #render(message) + content_tag(:div, sub_messages, :class => "nested_messages")
        content_tag(:ul, :class => "") do
            content_tag(:li, :class => "nested_messages") do
                render(message) + nested_messages(sub_messages)
            end
        end
    end.join.html_safe
end
end
