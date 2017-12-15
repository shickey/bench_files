var fs = require('fs');

if (process.argv.length < 4) {
  console.log("convert-wav requires arguments: convert-wav [input-file] [output-filename]");
  process.exit();
}

var inputFile = process.argv[2];
var outputFilename = process.argv[3];

var buf = fs.readFileSync(inputFile);

var header = {
  groupId: buf.toString('ascii', 0, 4),
  fileSize: buf.readUInt32LE(4),
  riffType: buf.toString('ascii', 8, 12)
}

var fmtChunk = {
  groupId: buf.toString('ascii', 12, 16),
  chunkSize: buf.readUInt32LE(16),
  formatTag: buf.readUInt16LE(20),
  channels: buf.readUInt16LE(22),
  samplesPerSec: buf.readUInt32LE(24),
  avgBytesPerSec: buf.readUInt32LE(28),
  blockAlign: buf.readUInt16LE(32),
  bitsPerSample: buf.readUInt16LE(34)
}

var dataChunk = {
  groupId: buf.toString('ascii', 36, 40),
  chunkSize: buf.readUInt32LE(40),
  sampleData: buf.slice(44)
}

console.log(header);
console.log(fmtChunk);
console.log(dataChunk);

var samplesPerChannel = dataChunk.chunkSize / 4;

var left1 = new Uint16Array(2048);
var left2 = new Uint16Array(samplesPerChannel - 2048);
var right = new Uint16Array(samplesPerChannel);

for (var i = 0; i < samplesPerChannel; ++i) {
  var leftSample = dataChunk.sampleData.readInt16LE(i * 4);
  // var rightSample = dataChunk.sampleData.readInt16LE((i * 4) + 2);
  
  if (i < 2048) {
    left1[i] = (leftSample + 32768) / 16; // Map to 0-4095
  }
  else {
    left2[i - 2048] = (leftSample + 32768) / 16; // Map to 0-4095
  }
  // left[i] = (leftSample + 32768) / 16; // Map to 0-4095
  // right[i] = (rightSample + 32768) / 16; // Map to 0-4095
}

var fd = fs.openSync(outputFilename + ".left1", 'w')
fs.writeSync(fd, left1.toString());
fs.closeSync(fd);

var fd = fs.openSync(outputFilename + ".left2", 'w')
fs.writeSync(fd, left2.toString());
fs.closeSync(fd);

// fd = fs.openSync(outputFilename + ".right", 'w')
// fs.writeSync(fd, right.toString());
// fs.closeSync(fd);

console.log("Output " + samplesPerChannel + " samples per channel");
