export function makeSlug(param: string): string {
  return param
    .replaceAll(/(\s|-|_)+/g, "_")
    .replaceAll(/(?<!\s|_|-)(?!^)([A-Z])/g, "_$1")
    .toLowerCase();
}
