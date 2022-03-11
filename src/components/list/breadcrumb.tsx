import React from 'react'

const Breadcrumb: React.FC<BreadcrumbProps> = ({ tags }) => {
  return (
    <div className="text-sm breadcrumbs">
      <ul>
        {tags.map(tag => (
          <li key={`tag-${tag}`}>{tag}</li>
        ))}
      </ul>
    </div>
  )
}

interface BreadcrumbProps {
  children?: never
  tags: string[]
}

export default Breadcrumb
