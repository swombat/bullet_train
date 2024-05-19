# Scaffolding for this testing

rails generate super_scaffold Project Team name:text_field --sortable
rails generate super_scaffold Projects::Widget Project,Team name:text_field --sortable
rails generate super_scaffold Projects::Widgets::Item Projects::Widget,Project name:text_field --sortable

