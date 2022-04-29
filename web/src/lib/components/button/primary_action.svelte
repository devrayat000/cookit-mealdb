<script>
	import ActionButton from './action.svelte';
</script>

<div class="flex gap-2">
	<ActionButton href="/#random_meals" scroll={false} class="btn-primary">Get Started</ActionButton>
	<ActionButton href="/meal/category" title="Categories" class="btn-secondary btn-outline">
		Categories
	</ActionButton>
</div>
