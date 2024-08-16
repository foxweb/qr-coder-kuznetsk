# frozen_string_literal: true

require 'rqrcode'

data = [
  { name: 'Алексеевка',	url: 'https://youtu.be/TUg-Y2WRYD0' },
  { name: 'Анненково',	url: 'https://youtu.be/kt-quYY6e5g' },
  { name: 'Бабарыкино',	url: 'https://youtu.be/fCRrzlUU8O4' },
  { name: 'Бестянка',	url: 'https://youtu.be/tY7uM6jhGHw' },
  { name: 'Благодатка',	url: 'https://youtu.be/wPmm8ZeRROs' },
  { name: 'Большой Труев',	url: 'https://youtu.be/TcbOfIlAP4s' },
  { name: 'Боровая',	url: 'https://youtu.be/wZcC7UXhngw' },
  { name: 'Верхозим',	url: 'https://youtu.be/gX8Xz6ttPHU' },
  { name: 'Верхозим (село)',	url: 'https://youtu.be/UqoTs3pwq_E' },
  { name: 'Второе Тарлаково',	url: 'https://youtu.be/NnKuwbeEtEU' },
  { name: 'Дворики',	url: 'https://youtu.be/5-OoxdNF4FY' },
  { name: 'Евлашево',	url: 'https://youtu.be/B-vA27Fs5jM' },
  { name: 'Елюзань',	url: 'https://youtu.be/B9jAQrIudMc' },
  { name: 'Журчалка',	url: 'https://youtu.be/3uKdSJelsoY' },
  { name: 'Злобинка',	url: 'https://youtu.be/xO7WAYQP8Qk' },
  { name: 'Казаковка',	url: 'https://youtu.be/lTOGfRaE2l0' },
  { name: 'Каменка',	url: 'https://youtu.be/LmCbCeGxNMk' },
  { name: 'Козляковка',	url: 'https://youtu.be/oKQvnLulsuE' },
  { name: 'Комаровка',	url: 'https://youtu.be/QYGLBUGcEPA' },
  { name: 'Малый Труев',	url: 'https://youtu.be/TcbOfIlAP4s' },
  { name: 'Марьевка',	url: 'https://youtu.be/tY7uM6jhGHw' },
  { name: 'Махалино',	url: 'https://youtu.be/n7nWguwhTJs' },
  { name: 'Монастырское',	url: 'https://youtu.be/lc5IPMUqQu0' },
  { name: 'Морозовка',	url: 'https://youtu.be/SiFY1TBgYhs' },
  { name: 'Нижнедубенск',	url: 'https://youtu.be/haBpMHUcoC8' },
  { name: 'Нижнее Аблязово',	url: 'https://youtu.be/pXS0jQKCmkE' },
  { name: 'Никольское',	url: 'https://youtu.be/exqorV4JPbI' },
  { name: 'Новостройка',	url: 'https://youtu.be/x3R8kDhdPM8' },
  { name: 'Первое Тарлаково',	url: 'https://youtu.be/6wwpXmI8Ews' },
  { name: 'Пионер',	url: 'https://youtu.be/eTOjyOHSWTM' },
  { name: 'Посёлки',	url: 'https://youtu.be/uPzI22hwtRw' },
  { name: 'Прогресс',	url: 'https://youtu.be/o_1uuqV_TGg' },
  { name: 'Радищево',	url: 'https://youtu.be/nF4vmhu9_CE' },
  { name: 'Ржавка',	url: 'https://youtu.be/nKE_5ZiZjFY' },
  { name: 'Русская Пенделка',	url: 'https://youtu.be/hWABxjkQJ58' },
  { name: 'Сосновка',	url: 'https://youtu.be/TP-tb0NF1T8' },
  { name: 'Старый Кряжим',	url: 'https://youtu.be/qZaoiqEypcY' },
  { name: 'Сурмино',	url: 'https://youtu.be/lWnDdyMZjys' },
  { name: 'Сухановка',	url: 'https://youtu.be/KUZZi_10150' },
  { name: 'Сюзюм (станция)',	url: 'https://youtu.be/TUKizdK6yBU' },
  { name: 'Сюзюм (село)',	url: 'https://youtu.be/AZd4aLSfZQM' },
  { name: 'Татарская Пенделка',	url: 'https://youtu.be/o8l50XiXIRc' },
  { name: 'Татарский Канадей',	url: 'https://youtu.be/cwselo0eoHY' },
  { name: 'Тихменево',	url: 'https://youtu.be/lc5IPMUqQu0' },
  { name: 'Траханиотово',	url: 'https://youtu.be/x2noyskc9MQ' },
  { name: 'Тютнярь',	url: 'https://youtu.be/Af2MrPzV6tY' },
  { name: 'Ульяновка',	url: 'https://youtu.be/SxEOBQ-vpe4' },
  { name: 'Часы',	url: 'https://youtu.be/xBphIQf96Wc' },
  { name: 'Чибирлей',	url: 'https://youtu.be/J4YwXOD-oUA' },
  { name: 'Шелемис',	url: 'https://youtu.be/prCwBPD1igk' },
  { name: 'Шишовка',	url: 'https://youtu.be/jj_l7raTd_0' },
  { name: 'Явлейка',	url: 'https://youtu.be/CqdeSBouaps' },
  { name: 'Ясная Поляна',	url: 'https://youtu.be/M6K4RDor5JI' }
]

def generator(url)
  RQRCode::QRCode.new(url).as_png(
    bit_depth: 1,
    border_modules: 4,
    color_mode: ChunkyPNG::COLOR_GRAYSCALE,
    module_px_size: 6,
    size: 400
  )
end

data.each do |item|
  png_data = generator(item[:url])
  File.binwrite("./result/#{item[:name]}.png", png_data)
end

# NOTE: see result in ./result directory
