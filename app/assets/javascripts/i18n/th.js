var I18n = I18n || {};
I18n.translations = {"th":{"date":{"abbr_day_names":["อา","จ","อ","พ","พฤ","ศ","ส"],"abbr_month_names":[null,"ม.ค.","ก.พ.","มี.ค.","เม.ย.","พ.ค.","มิ.ย.","ก.ค.","ส.ค.","ก.ย.","ต.ค.","พ.ย.","ธ.ค."],"day_names":["อาทิตย์","จันทร์","อังคาร","พุธ","พฤหัสบดี","ศุกร์","เสาร์"],"formats":{"default":"%d-%m-%Y","long":"%d %B %Y","short":"%d %b"},"month_names":[null,"มกราคม","กุมภาพันธ์","มีนาคม","เมษายน","พฤษภาคม","มิถุนายน","กรกฎาคม","สิงหาคม","กันยายน","ตุลาคม","พฤศจิกายน","ธันวาคม"],"order":["day","month","year"]},"datetime":{"distance_in_words":{"about_x_hours":"ประมาณ %{count} ชั่วโมง","about_x_months":"ประมาณ %{count} เดือน","about_x_years":"ประมาณ %{count} ปี","almost_x_years":"เกือบ %{count} ปี","half_a_minute":"ครึ่งนาที","less_than_x_minutes":"น้อยกว่า %{count} นาที","less_than_x_seconds":"น้อยกว่า %{count} วินาที","over_x_years":"มากกว่า %{count} ปี","x_days":"%{count} วัน","x_minutes":"%{count} นาที","x_months":"%{count} เดือน","x_seconds":"%{count} วินาที"},"prompts":{"day":"วัน","hour":"ชั่วโมง","minute":"นาที","month":"เดือน","second":"วินาที","year":"ปี"}},"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"ต้องถูกยอมรับ","blank":"ต้องไม่เว้นว่างเอาไว้","confirmation":"ไม่ตรงกับการยืนยัน","empty":"ต้องไม่เว้นว่างเอาไว้","equal_to":"ต้องมีค่าเท่ากับ %{count}","even":"ต้องเป็นจำนวนคู่","exclusion":"ไม่ได้รับอนุญาตให้ใช้","greater_than":"ต้องมากกว่า %{count}","greater_than_or_equal_to":"ต้องมากกว่าหรือเท่ากับ %{count}","inclusion":"ไม่ได้อยู่ในรายการ","invalid":"ไม่ถูกต้อง","less_than":"ต้องมีค่าน้อยกว่า %{count}","less_than_or_equal_to":"ต้องมีค่าน้อยกว่าหรือเท่ากับ %{count}","not_a_number":"ไม่ใช่ตัวเลข","not_an_integer":"ไม่ใช่จำนวนเต็ม","odd":"ต้องเป็นจำนวนคี่","record_invalid":"ไม่ผ่านการตรวจสอบ: %{errors}","taken":"ถูกใช้ไปแล้ว","too_long":"ยาวเกินไป (ต้องไม่เกิน %{count} ตัวอักษร)","too_short":"สั้นเกินไป (ต้องยาวกว่า %{count} ตัวอักษร)","wrong_length":"มีความยาวไม่ถูกต้อง (ต้องมีความยาว %{count} ตัวอักษร)"},"template":{"body":"โปรดตรวจสอบข้อมูลในช่องต่อไปนี้:","header":"พบข้อผิดพลาด %{count} ประการ ทำให้ไม่สามารถบันทึก%{model}ได้"}},"helpers":{"select":{"prompt":"โปรดเลือก"},"submit":{"create":"สร้าง%{model}","submit":"บันทึก%{model}","update":"ปรับปรุง%{model}"}},"number":{"currency":{"format":{"delimiter":",","format":"%n %u","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"บาท"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"พันล้าน","million":"ล้าน","quadrillion":"พันล้านล้าน","thousand":"พัน","trillion":"ล้านล้าน","unit":""}},"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":"ไบต์","gb":"จิกะไบต์","kb":"กิโลไบต์","mb":"เมกะไบต์","tb":"เทระไบต์"}}},"percentage":{"format":{"delimiter":""}},"precision":{"format":{"delimiter":""}}},"support":{"array":{"last_word_connector":", และ ","two_words_connector":" และ ","words_connector":", "}},"time":{"am":"ก่อนเที่ยง","formats":{"default":"%a %d %b %Y %H:%M:%S %z","long":"%d %B %Y %H:%M น.","short":"%d %b %H:%M น."},"pm":"หลังเที่ยง"},"activemodel":{"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"ต้องถูกยอมรับ","blank":"ต้องไม่เว้นว่างเอาไว้","confirmation":"ไม่ตรงกับการยืนยัน","empty":"ต้องไม่เว้นว่างเอาไว้","equal_to":"ต้องมีค่าเท่ากับ %{count}","even":"ต้องเป็นจำนวนคู่","exclusion":"ไม่ได้รับอนุญาตให้ใช้","greater_than":"ต้องมากกว่า %{count}","greater_than_or_equal_to":"ต้องมากกว่าหรือเท่ากับ %{count}","inclusion":"ไม่ได้อยู่ในรายการ","invalid":"ไม่ถูกต้อง","less_than":"ต้องมีค่าน้อยกว่า %{count}","less_than_or_equal_to":"ต้องมีค่าน้อยกว่าหรือเท่ากับ %{count}","not_a_number":"ไม่ใช่ตัวเลข","not_an_integer":"ไม่ใช่จำนวนเต็ม","odd":"ต้องเป็นจำนวนคี่","record_invalid":"ไม่ผ่านการตรวจสอบ: %{errors}","taken":"ถูกใช้ไปแล้ว","too_long":"ยาวเกินไป (ต้องไม่เกิน %{count} ตัวอักษร)","too_short":"สั้นเกินไป (ต้องยาวกว่า %{count} ตัวอักษร)","wrong_length":"มีความยาวไม่ถูกต้อง (ต้องมีความยาว %{count} ตัวอักษร)"},"template":{"body":"โปรดตรวจสอบข้อมูลในช่องต่อไปนี้:","header":"พบข้อผิดพลาด %{count} ประการ ทำให้ไม่สามารถบันทึก%{model}ได้"}}},"activerecord":{"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"ต้องถูกยอมรับ","blank":"ต้องไม่เว้นว่างเอาไว้","confirmation":"ไม่ตรงกับการยืนยัน","empty":"ต้องไม่เว้นว่างเอาไว้","equal_to":"ต้องมีค่าเท่ากับ %{count}","even":"ต้องเป็นจำนวนคู่","exclusion":"ไม่ได้รับอนุญาตให้ใช้","greater_than":"ต้องมากกว่า %{count}","greater_than_or_equal_to":"ต้องมากกว่าหรือเท่ากับ %{count}","inclusion":"ไม่ได้อยู่ในรายการ","invalid":"ไม่ถูกต้อง","less_than":"ต้องมีค่าน้อยกว่า %{count}","less_than_or_equal_to":"ต้องมีค่าน้อยกว่าหรือเท่ากับ %{count}","not_a_number":"ไม่ใช่ตัวเลข","not_an_integer":"ไม่ใช่จำนวนเต็ม","odd":"ต้องเป็นจำนวนคี่","record_invalid":"ไม่ผ่านการตรวจสอบ: %{errors}","taken":"ถูกใช้ไปแล้ว","too_long":"ยาวเกินไป (ต้องไม่เกิน %{count} ตัวอักษร)","too_short":"สั้นเกินไป (ต้องยาวกว่า %{count} ตัวอักษร)","wrong_length":"มีความยาวไม่ถูกต้อง (ต้องมีความยาว %{count} ตัวอักษร)"},"template":{"body":"โปรดตรวจสอบข้อมูลในช่องต่อไปนี้:","header":"พบข้อผิดพลาด %{count} ประการ ทำให้ไม่สามารถบันทึก%{model}ได้"}}},"i18n":{"plural":{"keys":["other"],"rule":{}}}}};