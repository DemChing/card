QJ = require 'qj'

defaultFormat = /(\d{1,4})/g

cards = [
  {
      type: 'amex',
      pattern: /^3[47]/,
      format: /(\d{1,4})(\d{1,6})?(\d{1,5})?/,
      length: [15],
      cvcLength: [4],
      luhn: true
  }
  {
      type: 'dankort',
      pattern: /^5019/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'dinersclub',
      pattern: /^(36|38|30[0-5])/,
      format: /(\d{1,4})(\d{1,6})?(\d{1,4})?/,
      length: [14],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'rupay',
      pattern: /^652[12]/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'mada',
      pattern: /^(4(0(0861|1757|7(197|395)|9201)|1(2565|0685|7633|9593)|2(281[7-9]|8(331|67[1-3]))|3(1361|2328|4107|9954)|4(0(533|647|795)|5564|6(393|404|672))|5(5(036|708)|7865|8456)|6(2220|854[0-3])|8(301[0-2]|4783|609[4-6]|931[7-9])|93428)|5(0(4300|6968|8160)|13213|2(0058|1076|4(130|514)|9(415|741))|3(0(060|906)|1(095|196)|2013|5(825|989)|6023|7767|9931)|4(3(085|357)|9760)|5(4180|7606|8848)|8(5265|8(8(4[5-9]|5[01])|98[23])|9(005|206)))|6(0(4906|5141)|36120)|9682(0[1-9]|1[01]))/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'discover',
      pattern: /^(6011|65|64[4-9]|622)/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'elo',
      pattern: /^401178|^401179|^431274|^438935|^451416|^457393|^457631|^457632|^504175|^627780|^636297|^636369|^636368|^(506699|5067[0-6]\d|50677[0-8])|^(50900\d|5090[1-9]\d|509[1-9]\d{2})|^65003[1-3]|^(65003[5-9]|65004\d|65005[0-1])|^(65040[5-9]|6504[1-3]\d)|^(65048[5-9]|65049\d|6505[0-2]\d|65053[0-8])|^(65054[1-9]|6505[5-8]\d|65059[0-8])|^(65070\d|65071[0-8])|^65072[0-7]|^(65090[1-9]|65091\d|650920)|^(65165[2-9]|6516[6-7]\d)|^(65500\d|65501\d)|^(65502[1-9]|6550[3-4]\d|65505[0-8])|^(65092[1-9]|65097[0-8])/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'hipercard',
      pattern: /^(3841(0|4|6)0|606282|60(?!11))/,
      format: defaultFormat,
      length: [14..19],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'jcb',
      pattern: /^(308[8-9]|309[0-3]|3094[0]{4}|309[6-9]|310[0-2]|311[2-9]|3120|315[8-9]|333[7-9]|334[0-9]|352[8-9]|35[3-8][0-9])/,
      format: defaultFormat,
      length: [16, 19],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'laser',
      pattern: /^(6706|6771|6709)/,
      format: defaultFormat,
      length: [16, 17, 18, 19],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'maestro',
      pattern: /^(5018|5020|5038|5078|5[6-9]|6304|6703|6708|6759|676[1-3])/,
      format: defaultFormat,
      length: [12, 13, 14, 15, 16, 17, 18, 19],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'mastercard',
      pattern: /^(5[1-5]|677189)|^(222[1-9]|2[3-6]\d{2}|27[0-1]\d|2720)/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'mir',
      pattern: /^220[0-4]$/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'troy',
      pattern: /^9792/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'unionpay',
      pattern: /^62/,
      format: defaultFormat,
      length: [16, 17, 18, 19],
      cvcLength: [3],
      luhn: false
  }
  {
      type: 'visaelectron',
      pattern: /^4(026|17500|405|508|844|91[37])/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'visa',
      pattern: /^4/,
      format: defaultFormat,
      length: [13, 16, 19],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'uatp',
      pattern: /^1/,
      format: /(\d{1,4})(\d{1,5})?(\d{1,6})?/,
      length: [15],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'fbf',
      pattern: /^600722/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'hiper',
      pattern: /^(637095|637568|637599|637609|637612)/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
  {
      type: 'instapayment',
      pattern: /^63(7|8|9)/,
      format: defaultFormat,
      length: [16],
      cvcLength: [3],
      luhn: true
  }
]

cardFromNumber = (num) ->
  num = (num + '').replace(/\D/g, '')
  foundCard = undefined
  for card in cards
    if match = num.match(card.pattern)
      # Use card with higher match length / specificity
      if !foundCard or match[0].length > foundCard[1][0].length
        foundCard = [card, match]
  foundCard && foundCard[0]

cardFromType = (type) ->
  return card for card in cards when card.type is type

luhnCheck = (num) ->
  odd = true
  sum = 0

  digits = (num + '').split('').reverse()

  for digit in digits
    digit = parseInt(digit, 10)
    digit *= 2 if (odd = !odd)
    digit -= 9 if digit > 9
    sum += digit

  sum % 10 == 0

hasTextSelected = (target) ->
  try
    # If some text is selected
    return true if target.selectionStart? and
      target.selectionStart isnt target.selectionEnd

    # If some text is selected in IE
    if document?.selection?.createRange?
      return true if document.selection.createRange().text
  catch e

  false

# Private

# Format Card Number

reFormatCardNumber = (e) ->
  setTimeout =>
    target = e.target
    value   = QJ.val(target)
    value   = Payment.fns.formatCardNumber(value)
    QJ.val(target, value)
    QJ.trigger(target, 'change')

formatCardNumber = (maxLength) -> (e) ->
  # Only format if input is a number
  digit = String.fromCharCode(e.which)
  return unless /^\d+$/.test(digit)

  target = e.target
  value   = QJ.val(target)
  card    = cardFromNumber(value + digit)
  length  = (value.replace(/\D/g, '') + digit).length

  upperLengths = [16]
  upperLengths = card.length if card
  upperLengths = upperLengths.filter((x) -> x <= maxLength) if maxLength

  # Return if an upper length has been reached
  for upperLength, i in upperLengths
    continue if length >= upperLength and upperLengths[i+1]
    return if length >= upperLength

  # Return if focus isn't at the end of the text
  return if hasTextSelected(target)

  if card && card.type is 'amex'
    # Amex cards are formatted differently
    re = /^(\d{4}|\d{4}\s\d{6})$/
  else if card && card.type is 'uatp'
    # UATP cards are formatted differently
    re = /^(\d{4}|\d{4}\s\d{5})$/
  else
    re = /(?:^|\s)(\d{4})$/

  # If '4242' + 4
  if re.test(value)
    e.preventDefault()
    QJ.val(target, value + ' ' + digit)
    QJ.trigger(target, 'change')

formatBackCardNumber = (e) ->
  target = e.target
  value   = QJ.val(target)

  return if e.meta

  # Return unless backspacing
  return unless e.which is 8

  # Return if focus isn't at the end of the text
  return if hasTextSelected(target)

  # Remove the trailing space
  if /\d\s$/.test(value)
    e.preventDefault()
    QJ.val(target, value.replace(/\d\s$/, ''))
    QJ.trigger(target, 'change')
  else if /\s\d?$/.test(value)
    e.preventDefault()
    QJ.val(target, value.replace(/\s\d?$/, ''))
    QJ.trigger(target, 'change')

# Format Expiry

formatExpiry = (e) ->
  # Only format if input is a number
  digit = String.fromCharCode(e.which)
  return unless /^\d+$/.test(digit)

  target = e.target
  val     = QJ.val(target) + digit

  if /^\d$/.test(val) and val not in ['0', '1']
    e.preventDefault()
    QJ.val(target, "0#{val} / ")
    QJ.trigger(target, 'change')

  else if /^\d\d$/.test(val)
    e.preventDefault()
    QJ.val(target, "#{val} / ")
    QJ.trigger(target, 'change')

formatMonthExpiry = (e) ->
  digit = String.fromCharCode(e.which)
  return unless /^\d+$/.test(digit)

  target = e.target
  val     = QJ.val(target) + digit

  if /^\d$/.test(val) and val not in ['0', '1']
    e.preventDefault()
    QJ.val(target, "0#{val}")
    QJ.trigger(target, 'change')

  else if /^\d\d$/.test(val)
    e.preventDefault()
    QJ.val(target, "#{val}")
    QJ.trigger(target, 'change')

formatForwardExpiry = (e) ->
  digit = String.fromCharCode(e.which)
  return unless /^\d+$/.test(digit)

  target = e.target
  val     = QJ.val(target)

  if /^\d\d$/.test(val)
    QJ.val(target, "#{val} / ")
    QJ.trigger(target, 'change')

formatForwardSlash = (e) ->
  slash = String.fromCharCode(e.which)
  return unless slash is '/'

  target = e.target
  val     = QJ.val(target)

  if /^\d$/.test(val) and val isnt '0'
    QJ.val(target, "0#{val} / ")
    QJ.trigger(target, 'change')

formatBackExpiry = (e) ->
  # If shift+backspace is pressed
  return if e.metaKey

  target = e.target
  value   = QJ.val(target)

  # Return unless backspacing
  return unless e.which is 8

  # Return if focus isn't at the end of the text
  return if hasTextSelected(target)

  # Remove the trailing space
  if /\d(\s|\/)+$/.test(value)
    e.preventDefault()
    QJ.val(target, value.replace(/\d(\s|\/)*$/, ''))
    QJ.trigger(target, 'change')
  else if /\s\/\s?\d?$/.test(value)
    e.preventDefault()
    QJ.val(target, value.replace(/\s\/\s?\d?$/, ''))
    QJ.trigger(target, 'change')

#  Restrictions

restrictNumeric = (e) ->
  # Key event is for a browser shortcut
  return true if e.metaKey or e.ctrlKey

  # If keycode is a space
  return e.preventDefault() if e.which is 32

  # If keycode is a special char (WebKit)
  return true if e.which is 0

  # If char is a special char (Firefox)
  return true if e.which < 33

  input = String.fromCharCode(e.which)

  # Char is a number or a space
  return e.preventDefault() if !/[\d\s]/.test(input)

restrictCardNumber = (maxLength) -> (e) ->
  target = e.target
  digit   = String.fromCharCode(e.which)
  return unless /^\d+$/.test(digit)

  return if hasTextSelected(target)

  # Restrict number of digits
  value = (QJ.val(target) + digit).replace(/\D/g, '')
  card  = cardFromNumber(value)

  length = 16
  length = card.length[card.length.length - 1] if card
  length = Math.min length, maxLength if maxLength

  e.preventDefault() unless value.length <= length

restrictExpiry = (e, length) ->
  target = e.target
  digit   = String.fromCharCode(e.which)
  return unless /^\d+$/.test(digit)

  return if hasTextSelected(target)

  value = QJ.val(target) + digit
  value = value.replace(/\D/g, '')

  return e.preventDefault() if value.length > length

restrictCombinedExpiry = (e) ->
  return restrictExpiry e, 6

restrictMonthExpiry = (e) ->
  return restrictExpiry e, 2

restrictYearExpiry = (e) ->
  return restrictExpiry e, 4

restrictCVC = (e) ->
  target = e.target
  digit   = String.fromCharCode(e.which)
  return unless /^\d+$/.test(digit)

  return if hasTextSelected(target)

  val     = QJ.val(target) + digit
  return e.preventDefault() unless val.length <= 4

setCardType = (e) ->
  target  = e.target
  val      = QJ.val(target)
  cardType = Payment.fns.cardType(val) or 'unknown'

  unless QJ.hasClass(target, cardType)
    allTypes = (card.type for card in cards)

    QJ.removeClass target, 'unknown'
    QJ.removeClass target, allTypes.join(' ')

    QJ.addClass target, cardType
    QJ.toggleClass target, 'identified', cardType isnt 'unknown'
    QJ.trigger target, 'payment.cardType', cardType

# Public

class Payment
  @fns:
    cardExpiryVal: (value) ->
      value = value.replace(/\s/g, '')
      [month, year] = value.split('/', 2)

      # Allow for year shortcut
      if year?.length is 2 and /^\d+$/.test(year)
        year   = Payment.fns.padYear(year)

      month = parseInt(month, 10)
      year  = parseInt(year, 10)

      month: month, year: year
    padYear: (year) ->
      prefix = (new Date).getFullYear()
      prefix = prefix.toString()[0..1]
      return prefix + year
    validateCardNumber: (num) ->
      num = (num + '').replace(/\s+|-/g, '')
      return false unless /^\d+$/.test(num)

      card = cardFromNumber(num)
      return false unless card

      num.length in card.length and
        (card.luhn is false or luhnCheck(num))
    validateCardExpiry: (month, year, maxYear) ->
      # Allow passing an object
      if typeof month is 'object' and 'month' of month
        {month, year} = month
      else if typeof month is 'string' and '/' in month
        {month, year} = Payment.fns.cardExpiryVal(month)

      return false unless month and year

      month = QJ.trim(month)
      year  = QJ.trim(year)
      maxYear = maxYear || -1

      return false unless /^\d+$/.test(month) && month > 0 && month <= 12
      return false unless /^\d+$/.test(year)

      month = parseInt(month, 10)

      return false unless month and month <= 12

      if year.length is 2
        year   = Payment.fns.padYear year

      expiry      = new Date(year, month)
      currentTime = new Date

      if maxYear > 0
        return false unless year <= maxYear + currentTime.getFullYear()
      # Months start from 0 in JavaScript
      expiry.setMonth(expiry.getMonth() - 1)

      # The cc expires at the end of the month,
      # so we need to make the expiry the first day
      # of the month after
      expiry.setMonth(expiry.getMonth() + 1, 1)

      expiry > currentTime
    validateCardCVC: (cvc, type) ->
      cvc = QJ.trim(cvc)
      return false unless /^\d+$/.test(cvc)

      if type and cardFromType(type)
        # Check against a explicit card type
        cvc.length in cardFromType(type)?.cvcLength
      else
        # Check against all types
        cvc.length >= 3 and cvc.length <= 4
    cardType: (num) ->
      return null unless num
      cardFromNumber(num)?.type or null
    formatCardNumber: (num) ->
      card = cardFromNumber(num)
      return num unless card

      upperLength = card.length[card.length.length - 1]

      num = num.replace(/\D/g, '')
      num = num.slice(0, upperLength)

      if card.format.global
        num.match(card.format)?.join(' ')
      else
        groups = card.format.exec(num)
        return unless groups?
        groups.shift()
        groups = groups.filter((n) -> n) # Filter empty groups
        groups.join(' ')
  @restrictNumeric: (el) ->
    QJ.on el, 'keypress', restrictNumeric
  @cardExpiryVal: (el) ->
    Payment.fns.cardExpiryVal(QJ.val(el))
  @formatCardCVC: (el) ->
    Payment.restrictNumeric el
    QJ.on el, 'keypress', restrictCVC
    el
  @formatCardExpiry: (el) ->
    Payment.restrictNumeric el
    if el.length && el.length == 2
      [month, year] = el
      @formatCardExpiryMultiple month, year
    else
      QJ.on el, 'keypress', restrictCombinedExpiry
      QJ.on el, 'keypress', formatExpiry
      QJ.on el, 'keypress', formatForwardSlash
      QJ.on el, 'keypress', formatForwardExpiry
      QJ.on el, 'keydown', formatBackExpiry
    el
  @formatCardExpiryMultiple: (month, year) ->
    QJ.on month, 'keypress', restrictMonthExpiry
    QJ.on month, 'keypress', formatMonthExpiry
    QJ.on year, 'keypress', restrictYearExpiry
  @formatCardNumber: (el, maxLength) ->
    Payment.restrictNumeric el
    QJ.on el, 'keypress', restrictCardNumber(maxLength)
    QJ.on el, 'keypress', formatCardNumber(maxLength)
    QJ.on el, 'keydown', formatBackCardNumber
    QJ.on el, 'keyup blur', setCardType
    QJ.on el, 'paste', reFormatCardNumber
    QJ.on el, 'input', reFormatCardNumber
    el
  @getCardArray: -> return cards
  @setCardArray: (cardArray) ->
    cards = cardArray
    return true
  @addToCardArray: (cardObject) ->
    cards.push(cardObject)
  @removeFromCardArray: (type) ->
    for key, value of cards
      if value.type == type
        cards.splice(key, 1)
    return true

module.exports = Payment
global.Payment = Payment