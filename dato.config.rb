directory "_products" do
  dato.products.each do |item|
    create_post "#{item.title.parameterize}.md" do
      frontmatter :yaml, {
        layout: "product",
        title: item.title,
        price: item.price
      }
      content item.description
    end
  end
end
directory "_posts" do
  dato.blog_posts.each do |item|
    create_post "#{item.date.to_s.parameterize}-#{item.title.parameterize}.md" do
      frontmatter :yaml, {
        layout: "post",
        title: item.title,
        date: item.date.to_s,
        categories: item.categories
      }
      content item.content
    end
  end
end