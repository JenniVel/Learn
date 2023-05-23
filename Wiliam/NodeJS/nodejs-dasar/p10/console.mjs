import {Console} from 'console';
import fs from 'fs';

const a = fs.createWriteStream('application.log');

const log = new Console({
  stdout:a,
  stderr:a
});

log.info("Hello world");
log.error("Awas ada velen");
log.warn('P');