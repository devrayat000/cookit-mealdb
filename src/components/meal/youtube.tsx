import ChevronUpIcon from '$components/icons/chevron_up'
import { Disclosure, Transition } from '@headlessui/react'

const Youtube: React.FC<YoutubeProps> = ({ title, url }) => {
  return (
    <Disclosure as="section">
      {({ open }) => (
        <>
          <Disclosure.Button
            role="checkbox"
            className={`
                    flex justify-between items-center w-full px-4 py-2 text-md font-medium
                    text-left text-blue-600 bg-blue-100 rounded-lg
                    hover:bg-blue-200 focus:outline-none focus-visible:ring focus-visible:ring-purple-500
                    focus-visible:ring-opacity-75 ${
                      open ? 'rounded-b-none' : ''
                    }
                  `}
          >
            <span>Wanna see how it&apos;s made?</span>
            <ChevronUpIcon
              className={`${
                !open ? 'rotate-180' : ''
              } transition-transform text-blue-500
                    `}
            />
          </Disclosure.Button>
          <Transition
            appear
            show={open}
            aria-expanded={open}
            enter="transition-all origin-top duration-700 ease-out"
            enterFrom="scale-y-0 opacity-0"
            enterTo="scale-y-100 opacity-100"
            leave="transition-all origin-top duration-700 ease-out"
            leaveFrom="scale-y-100 opacity-100"
            leaveTo="scale-y-0 opacity-0"
            unmount={false}
          >
            <Disclosure.Panel
              static
              aria-hidden={!open}
              as="iframe"
              className="aspect-video w-full"
              title={title}
              name="Meal recipe on Youtube"
              src={url.replace('watch?v=', 'embed/')}
            />
          </Transition>
        </>
      )}
    </Disclosure>
  )
}
Youtube.displayName = 'Youtube'

export default Youtube

export interface YoutubeProps {
  title: string
  url: string
  children?: never
}
