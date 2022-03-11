import NavBar from '$components/appbar/nav'
import type { AppProps } from 'next/app'

import '../styles/globals.css'
// import {
//   Hydrate,
//   QueryCache,
//   QueryClient,
//   QueryClientProvider,
// } from 'react-query'

// const queryClient = new QueryClient({ queryCache: new QueryCache() })

const MyApp = ({ Component, pageProps }: AppProps) => {
  return (
    // <QueryClientProvider client={queryClient}>
    //   <Hydrate>
    <>
      <NavBar />

      <Component {...pageProps} />
    </>
    //   </Hydrate>
    // </QueryClientProvider>
  )
}

export default MyApp
