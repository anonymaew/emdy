import { defineConfig } from 'astro/config';
const defaultLayoutPlugin = () => {
  return (tree, file) => {
    file.data.astro.frontmatter.layout = '/src/layouts/main.astro';
  };
};


// https://astro.build/config
export default defineConfig({
  publicDir: './src/pages',
  markdown: {
    remarkPlugins: [defaultLayoutPlugin, 'remark-code-titles', 'remark-math'],
    rehypePlugins: ['rehype-slug', ['rehype-autolink-headings', {
      behavior: 'prepend'
    }], 'rehype-toc',
    'rehype-mathjax']
  }
});
