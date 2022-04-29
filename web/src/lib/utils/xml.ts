const xml = String.raw;

export interface UrlParams {
	loc: string;
	priority?: string;
	lastmod?: string;
	changefreq?: string;
}

export function generateUrl(params: UrlParams) {
	let attrs = ``;
	let key: keyof UrlParams;

	for (key in params) {
		if (Object.prototype.hasOwnProperty.call(params, key)) {
			const value = params[key];
			attrs += `<${key}>${value}</${key}>`;
		}
	}
	return xml`
        <url>
            ${attrs}
        </url>
    `;
}

export function generateSitemap(...urls: UrlParams[]) {
	return xml`<?xml version="1.0" encoding="UTF-8" ?>
    <urlset
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd"
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
      xmlns:video="http://www.google.com/schemas/sitemap-video/1.1"
      xmlns:news="http://www.google.com/schemas/sitemap-news/0.9"
      xmlns:mobile="http://www.google.com/schemas/sitemap-mobile/1.0"
      xmlns:pagemap="http://www.google.com/schemas/sitemap-pagemap/1.0"
      xmlns:xhtml="http://www.w3.org/1999/xhtml"
    >
      ${urls.map(generateUrl).join('')}
    </urlset>`;
}
