export type Maybe<T> = null | undefined | T

declare global {
  interface ImportMeta {
    env: NodeJS.ProcessEnv
  }
}
