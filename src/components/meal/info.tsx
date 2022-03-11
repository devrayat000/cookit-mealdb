const Info: React.FC<InfoProps> = ({ children, title }) => {
  return (
    <div className="flex my-2 mx-1">
      <span>{title}:&nbsp;</span>
      {children}
    </div>
  )
}

export interface InfoProps {
  children: React.ReactChild
  title: string
}

export default Info
