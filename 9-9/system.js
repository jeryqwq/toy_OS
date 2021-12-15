
const fs = require('fs')
const bufferInit = new ArrayBuffer(2 * 512 * 18 * 80) // 初始化软盘数据, 2个盘面*80个磁道*18个扇区*扇区大小512k
const panel = new Uint8Array(bufferInit)
fs.readFile('./9-9/boot_read5m', {}, (err, buff) =>{ // 需要被写入的内核代码
  const sysBuffer = new Uint8Array(buff) 
  fs.readFile('./9-9/kernel',{}, (err, buffer) => {
    const arr = new Uint8Array(buffer) // 转换为数组进行二进制操作
    sysBuffer.forEach((item, idx) => {
      panel[idx] = item
    })
     //第一个柱面第二个扇区存入我们的数据 512*18*2 + 512
  
    const startLoction =   512*18*2 + 512
    for(let i =0; i<arr.length; i++){
      panel[startLoction + i] = arr[i]
    }
    fs.writeFile('./9-9/system.img',panel , 'binary', function(err) {
    })
  })
})

