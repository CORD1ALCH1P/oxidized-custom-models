require 'oxidized/input/telnet'

class Qtech < Oxidized::Model
  using Refinements
  prompt /^\(\S+\) #/

  cfg :telnet do
    username /^User:/i
    password /^Password:/i
    post_login 'enable'
    pre_logout 'exit'
  end
end
