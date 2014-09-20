Fuckits = [
  {
    reg: /.*(читать|прочесть)+.*/i
    res: "Нихуя не читать"
  },
  {
    reg: /.*(ходить|идти)+.*/i
    res: "Сидеть на жопе"
  },
  {
    reg: /.*(купить|купка)+.*/i
    res: "Нихуя не покупать"
  },
  {
    reg: /.*(есть|жрать)+.*/i
    res: "Нихуя не жрать"
  },
  {
    reg: /.*(пробовать)+.*/i
    res: "Нихуя не пробовать"
  },
  {
    reg: /.*[^ку](?=пить)+.*/i
    res: "Нихуя не пить"
  },
  {
    reg: /.*(смотреть)+.*/i
    res: "Нихуя не смотреть"
  },
  {
    reg: /.*(знать)+.*/i
    res: "Нихуя не узнавать"
  },
  {
    reg: /.*(помнить)+.*/i
    res: "Нихуя не запоминать"
  },
  {
    reg: /.*(снять)+.*/i
    res: "Нихуя не снимать"
  }
]

String::fuckitize = ->
  value = this.valueOf()
  fuckitized = false
  for item in Fuckits
    if item.reg.test(value)
      fuckitized = true
      value = item.res
  count = Todos.find({}).count({})
  if !fuckitized
    if count == 0
      value = "Нихуя не делать"
    else if count % 2 is 1
      value = "Снова нихуя не делать"
    else if count % 2 is 0
      value = "И опять нихуя не делать"
  value