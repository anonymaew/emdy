import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

const defaultLayoutPlugin = () => {
    return (tree, file) => {
        file.data.astro.frontmatter.layout = '/src/layouts/main.astro';
    };
};

// https://astro.build/config
export default defineConfig({
    integrations: [
        tailwind(),
    ],
	markdown: {
		remarkPlugins: [
            defaultLayoutPlugin,
            'remark-code-titles',
            'remark-math',
        ],
		rehypePlugins: [
			'rehype-slug',
			['rehype-autolink-headings', { behavior: 'prepend' }],
			['rehype-toc', { headings: 'h2,h3,h4' }],
            'rehype-mathjax',
		],
	},
});
