class IsamFx < Oxidized::Model
  prompt /typ\:[\w.-]+\@[\w.-]+>#/

  comment '#'

  cfg :ssh, :telnet do
    pre_logout "logout"
  end

  cmd 'admin display-config' do |cfg|
    cfg.cut_both
  end

  cmd 'info configure flat' do |cfg|
    cfg.gsub! /\-\S\[1D/, ''
    cfg.gsub! /\\\S\[1D/, ''
    cfg.gsub! /\|\S\[1D/, ''
    cfg.gsub! /\/\S\[1D/, ''
    cfg.gsub! /\S\[1D/, ''
    cfg.gsub! /\S\[1D\S/, ''
    cfg.cut_both
  end

end
