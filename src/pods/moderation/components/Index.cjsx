# require '../styles/event'
React = require 'react'


module.exports = React.createClass
  displayName: 'Moderator'


  render: ->
    current = if @props.routes[2] then @props.routes[2].path
    <div>
      <div className="content">
          <h4 className="header">Moderation</h4>
      </div>
      <ul className="tabs content" ref="tabs">
          <li className="tab col s3">
            <a href={"#/#{@props.params.event}/moderation/user"} className={if current == 'user' then 'active'}>Helfer</a>
          </li>
          <li className="tab col s3">
            <a href={"#/#{@props.params.event}/moderation/shifts"} className={if current == 'shifts' then 'active'}>Schichten</a>
          </li>
          <li className="tab col s3">
            <a href={"#/#{@props.params.event}/moderation/conflicts"} className={if current == 'conflicts' then 'active'}>Konflikte</a>
          </li>
      </ul>
      <div>
          {@props.children}
      </div>
    </div>
