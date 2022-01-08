import { AppProps } from "next/app";
import "../styles/globals.css";
import "@fortawesome/fontawesome-svg-core/styles.css";
import {
  Hydrate,
  QueryCache,
  QueryClient,
  QueryClientProvider,
} from "react-query";

const queryClient = new QueryClient({ queryCache: new QueryCache() });

const MyApp = ({ Component, pageProps }: AppProps) => {
  return (
    <QueryClientProvider client={queryClient}>
      <Hydrate>
        <Component {...pageProps} />
      </Hydrate>
    </QueryClientProvider>
  );
};

export default MyApp;
