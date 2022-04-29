import { QueryClient, QueryCache, type QueryClientConfig } from '@sveltestack/svelte-query';

// Create a client
export const cache = new QueryCache();

export default function createQueryClient(config?: QueryClientConfig) {
	return new QueryClient({
		queryCache: config?.queryCache ?? cache,
		mutationCache: config?.mutationCache,
		defaultOptions: {
			queries: {
				refetchOnWindowFocus: false,
				...config?.defaultOptions?.queries
			},
			mutations: config?.defaultOptions?.mutations
		}
	});
}
