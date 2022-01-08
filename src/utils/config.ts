export const config = {
  get isBrowser() {
    return process.browser;
  },
  get isServer() {
    return !process.browser;
  },
};
