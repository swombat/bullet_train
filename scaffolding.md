# Scaffolding for this testing

## Confirmed working

```bash
rails generate super_scaffold Project Team name:text_field --sortable
rails generate super_scaffold Projects::Widget Project,Team name:text_field --sortable
```

## Todo

```bash
rails generate super_scaffold Projects::Widgets::Item Projects::Widget,Project,Team name:text_field --sortable
```
