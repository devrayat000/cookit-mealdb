export function makeSlug(payload: string): string {
	return (
		payload
			?.trim()
			.replace(/([()'"&,])/g, '')
			// .replace(/(\(|\)|'|"|&|,)/g, '')
			.replace(/([\s-_]+)/g, '_')
			// .replace(/(\s|-|_)+/g, "_")
			.replace(/(?<!\s|_|-)(?!^)([A-Z])/g, '_$1')
			.toLocaleLowerCase()
	);
}

export function extractIdFromSlug(payload: string): string {
	const [match] = /(?<=_)(\d+){5}$/.exec(payload?.trim())!;
	return match;
}

console.log(extractIdFromSlug('sledz_w_oleju_polish_herrings_56214'));

console.log(makeSlug('Beef and Mustard Pie'));
console.log(makeSlug('Beef and Oyster pie'));
console.log(makeSlug('Beef Banh Mi Bowls with Sriracha Mayo, Carrot & Pickled Cucumber'));
console.log(makeSlug('Beef Bourguignon'));
console.log(makeSlug('Beef stroganoff'));
console.log(makeSlug('Bitterballen (Dutch meatballs)'));
console.log(makeSlug('Gołąbki (cabbage roll)'));
console.log(makeSlug('Portuguese prego with green piri-piri'));
console.log(makeSlug("Vegetable Shepherd's Pie"));
console.log(makeSlug('Baked salmon with fennel & tomatoes'));
console.log(makeSlug('Portuguese fish stew (Caldeirada de peixe)'));
console.log(makeSlug('Sledz w Oleju (Polish Herrings)'));
console.log(makeSlug('Baked salmon with fennel & tomatoes'));
