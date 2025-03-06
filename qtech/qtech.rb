class Qtech < Oxidized::Model
  prompt /^\([\w-]+\) \#$/
  comment  '# '

  cmd 'show running-config' do |cfg|
    cfg
  end

  cfg :telnet do
  end
end