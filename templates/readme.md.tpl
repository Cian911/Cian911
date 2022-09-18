### Hi there 👋

I'm Cian! I'm a Senior Software Engineer based in Dublin, Ireland.

![Cian's github stats](https://github-readme-stats.vercel.app/api?username=CIan911&theme=dracula&show_icons=true)

#### 👨‍💻 Repositories I created recently

{{- range recentRepos 5 }}
- **[{{ .Name }}]({{ .URL }})**{{ with .Description }} - {{ . }}{{ end }}
{{- end }}

#### 🚀 Latest releases I've contributed to

{{ range recentReleases 5 }}
- [{{ .Name }} @ {{ .LastRelease.TagName }}]({{ .LastRelease.URL }}) ({{ humanize .LastRelease.PublishedAt }})
{{- end }}

#### ⭐ Recent Stars

{{ range recentStars 5 }}
- **[{{ .Repo.Name }}]({{ .Repo.URL }})**{{ with .Repo.Description }} - {{ . }}{{ end }} ({{ humanize .StarredAt }})
{{- end }}

#### 📄 Latest posts

{{- range rss "https://ciangallagher.me/feed.xml" 3 }}
- [{{ .Title }}]({{ .URL }}) ({{ humanize .PublishedAt }})
{{- end }}

#### 💬 Feedback

If you use any of my projects, I'd love to hear from you! Don't be shy and let me know what you liked
and what needs being improved. I will try my best to help!

#### 📫 How to reach me

- Twitter: https://twitter.com/Cian911
- Blog: https://ciangallagher.me/contact
