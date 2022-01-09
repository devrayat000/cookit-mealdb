import Link, { LinkProps } from 'next/link'

const ActionButton: React.FC<ActionButtonProps> = props => {
  const {
    href,
    as,
    scroll,
    passHref,
    replace,
    locale,
    prefetch,
    shallow,
    className,
    ...rest
  } = props
  return (
    <Link
      {...{ href, as, scroll, passHref, replace, locale, prefetch, shallow }}
    >
      <a
        className={`btn transition-transform hover:scale-105 ${
          className ?? ''
        }`.trim()}
        {...rest}
      />
    </Link>
  )
}

export interface ActionButtonProps
  extends LinkProps,
    Omit<React.HTMLAttributes<HTMLAnchorElement>, 'href'> {}

export default ActionButton
