import { Object } from "./object"

class Message extends Object {
  name: string;
  args: [];
  line: number;
  cache: any;
  constructor(name: string, currentLine = 0) {
    super();
    this.name = name;
    this.args = [];
    this.line = currentLine;
    let match;
  
    if (match = /^\d+/.exec(name)) {
      this.cache = Number(match) || 0;
    } else if (match = /^"(.*)"$/.exec(name)) {
      this.cache = match[1] || "";
    }
  }
}

export { Message }
