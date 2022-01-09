import ActionButton from './action'

const PrimaryAction = () => {
  return (
    <div className="flex gap-2">
      <ActionButton
        href="/#random_meals"
        scroll={false}
        className="btn-primary"
      >
        Get Started
      </ActionButton>
      <ActionButton
        href="/meal/category"
        title="Categories"
        className="btn-secondary btn-outline"
      >
        Categories
      </ActionButton>
    </div>
  )
}

export default PrimaryAction
