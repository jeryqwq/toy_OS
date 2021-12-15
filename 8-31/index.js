/*
 * @Descripttion: 
 * @version: 
 * @Author: sueRimn
 * @Date: 2021-08-31 21:09:13
 * @LastEditors: sueRimn
 * @LastEditTime: 2021-09-03 00:40:54
 */
const fs = require('fs')
const bufferInit = new ArrayBuffer(2 * 512 * 18 * 80) // 初始化软盘数据, 2个盘面*80个磁道*18个扇区*扇区大小512k
const panel = new Uint8Array(bufferInit)
const msg = "This is a text from cylinder 1 and sector 2"
fs.readFile('./8-31/base.img',{}, (err, buffer) => {
  const arr = new Uint8Array(buffer) // 转换为数组进行二进制操作
  arr.forEach((item, idx) => {
    panel[idx] = item
  })
   //第一个柱面第二个扇区存入我们的数据 

  const startLoction =   512*18*2 + 512
  for(let i =0; i<msg.length; i++){
    const charCode = msg[i].charCodeAt()
    panel[startLoction + i] = charCode
  }
  fs.writeFile('./8-31/system.img',panel , 'binary', function(err) {
  
  })
})
